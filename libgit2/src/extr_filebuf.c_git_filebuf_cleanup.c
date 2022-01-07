
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; scalar_t__ path_lock; scalar_t__ path_original; int zs; scalar_t__ z_buf; scalar_t__ buffer; scalar_t__ compute_digest; int digest; int did_rename; scalar_t__ created_lock; scalar_t__ fd_is_open; } ;
typedef TYPE_1__ git_filebuf ;


 int deflateEnd (int *) ;
 int git__free (scalar_t__) ;
 int git_hash_ctx_cleanup (int *) ;
 scalar_t__ git_path_exists (scalar_t__) ;
 int memset (TYPE_1__*,int,int) ;
 int p_close (int) ;
 int p_unlink (scalar_t__) ;

void git_filebuf_cleanup(git_filebuf *file)
{
 if (file->fd_is_open && file->fd >= 0)
  p_close(file->fd);

 if (file->created_lock && !file->did_rename && file->path_lock && git_path_exists(file->path_lock))
  p_unlink(file->path_lock);

 if (file->compute_digest) {
  git_hash_ctx_cleanup(&file->digest);
  file->compute_digest = 0;
 }

 if (file->buffer)
  git__free(file->buffer);


 if (file->z_buf) {
  git__free(file->z_buf);
  deflateEnd(&file->zs);
 }

 if (file->path_original)
  git__free(file->path_original);
 if (file->path_lock)
  git__free(file->path_lock);

 memset(file, 0x0, sizeof(git_filebuf));
 file->fd = -1;
}
