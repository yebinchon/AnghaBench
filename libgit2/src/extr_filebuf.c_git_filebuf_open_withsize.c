
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_12__ {int do_not_buffer; int do_fsync; size_t buf_size; int fd; int compute_digest; int fd_is_open; int created_lock; int * path_original; int * path_lock; int * write; int flush_mode; int * z_buf; int zs; int digest; int * buffer; int last_error; scalar_t__ buf_pos; } ;
typedef TYPE_1__ git_filebuf ;
struct TYPE_13__ {size_t size; } ;
typedef TYPE_2__ git_buf ;


 int BUFERR_OK ;
 TYPE_2__ GIT_BUF_INIT ;
 int GIT_EDIRECTORY ;
 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,size_t) ;
 int GIT_ERROR_FILESYSTEM ;
 int GIT_ERROR_ZLIB ;
 int GIT_FILEBUF_DEFLATE_SHIFT ;
 int GIT_FILEBUF_DO_NOT_BUFFER ;
 int GIT_FILEBUF_FSYNC ;
 int GIT_FILEBUF_HASH_CONTENTS ;
 int GIT_FILEBUF_TEMPORARY ;
 int * GIT_FILELOCK_EXTENSION ;
 size_t GIT_FILELOCK_EXTLENGTH ;
 int Z_NO_FLUSH ;
 scalar_t__ Z_OK ;
 int assert (int) ;
 scalar_t__ deflateInit (int *,int) ;
 void* git__malloc (size_t) ;
 void* git_buf_detach (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_error_set (int ,char*,...) ;
 int git_filebuf_cleanup (TYPE_1__*) ;
 int git_futils_mktmp (TYPE_2__*,char const*,int ) ;
 scalar_t__ git_hash_ctx_init (int *) ;
 scalar_t__ git_path_isdir (int *) ;
 int lock_file (TYPE_1__*,int,int ) ;
 int memcpy (int *,int *,size_t) ;
 int memset (TYPE_1__*,int,int) ;
 int resolve_symlink (TYPE_2__*,char const*) ;
 int write_deflate ;
 int write_normal ;

int git_filebuf_open_withsize(git_filebuf *file, const char *path, int flags, mode_t mode, size_t size)
{
 int compression, error = -1;
 size_t path_len, alloc_len;




 assert(file && path && file->buffer == ((void*)0));

 memset(file, 0x0, sizeof(git_filebuf));

 if (flags & GIT_FILEBUF_DO_NOT_BUFFER)
  file->do_not_buffer = 1;

 if (flags & GIT_FILEBUF_FSYNC)
  file->do_fsync = 1;

 file->buf_size = size;
 file->buf_pos = 0;
 file->fd = -1;
 file->last_error = BUFERR_OK;


 if (!file->do_not_buffer) {
  file->buffer = git__malloc(file->buf_size);
  GIT_ERROR_CHECK_ALLOC(file->buffer);
 }


 if (flags & GIT_FILEBUF_HASH_CONTENTS) {
  file->compute_digest = 1;

  if (git_hash_ctx_init(&file->digest) < 0)
   goto cleanup;
 }

 compression = flags >> GIT_FILEBUF_DEFLATE_SHIFT;


 if (compression != 0) {

  if (deflateInit(&file->zs, compression) != Z_OK) {
   git_error_set(GIT_ERROR_ZLIB, "failed to initialize zlib");
   goto cleanup;
  }


  file->z_buf = git__malloc(file->buf_size);
  GIT_ERROR_CHECK_ALLOC(file->z_buf);


  file->flush_mode = Z_NO_FLUSH;
  file->write = &write_deflate;
 } else {
  file->write = &write_normal;
 }


 if (flags & GIT_FILEBUF_TEMPORARY) {
  git_buf tmp_path = GIT_BUF_INIT;


  file->fd = git_futils_mktmp(&tmp_path, path, mode);

  if (file->fd < 0) {
   git_buf_dispose(&tmp_path);
   goto cleanup;
  }
  file->fd_is_open = 1;
  file->created_lock = 1;


  file->path_original = ((void*)0);
  file->path_lock = git_buf_detach(&tmp_path);
  GIT_ERROR_CHECK_ALLOC(file->path_lock);
 } else {
  git_buf resolved_path = GIT_BUF_INIT;

  if ((error = resolve_symlink(&resolved_path, path)) < 0)
   goto cleanup;


  path_len = resolved_path.size;
  file->path_original = git_buf_detach(&resolved_path);


  GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, path_len, GIT_FILELOCK_EXTLENGTH);
  file->path_lock = git__malloc(alloc_len);
  GIT_ERROR_CHECK_ALLOC(file->path_lock);

  memcpy(file->path_lock, file->path_original, path_len);
  memcpy(file->path_lock + path_len, GIT_FILELOCK_EXTENSION, GIT_FILELOCK_EXTLENGTH);

  if (git_path_isdir(file->path_original)) {
   git_error_set(GIT_ERROR_FILESYSTEM, "path '%s' is a directory", file->path_original);
   error = GIT_EDIRECTORY;
   goto cleanup;
  }


  if ((error = lock_file(file, flags, mode)) < 0)
   goto cleanup;

  file->created_lock = 1;
 }

 return 0;

cleanup:
 git_filebuf_cleanup(file);
 return error;
}
