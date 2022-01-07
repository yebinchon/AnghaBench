
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * free; int * freshen; int * foreach; int * exists_prefix; int * exists; int * readstream; int * writestream; int * read_header; int * read_prefix; int * write; int * read; int version; } ;
struct TYPE_6__ {size_t objects_dirlen; char* objects_dir; int object_zlib_level; int fsync_object_files; unsigned int object_dir_mode; unsigned int object_file_mode; TYPE_1__ parent; } ;
typedef TYPE_2__ loose_backend ;
typedef int git_odb_backend ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 unsigned int GIT_OBJECT_DIR_MODE ;
 unsigned int GIT_OBJECT_FILE_MODE ;
 int GIT_ODB_BACKEND_VERSION ;
 int Z_BEST_SPEED ;
 int assert (int) ;
 TYPE_2__* git__calloc (int,size_t) ;
 int loose_backend__exists ;
 int loose_backend__exists_prefix ;
 int loose_backend__foreach ;
 int loose_backend__free ;
 int loose_backend__freshen ;
 int loose_backend__read ;
 int loose_backend__read_header ;
 int loose_backend__read_prefix ;
 int loose_backend__readstream ;
 int loose_backend__write ;
 int loose_backend__writestream ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

int git_odb_backend_loose(
 git_odb_backend **backend_out,
 const char *objects_dir,
 int compression_level,
 int do_fsync,
 unsigned int dir_mode,
 unsigned int file_mode)
{
 loose_backend *backend;
 size_t objects_dirlen, alloclen;

 assert(backend_out && objects_dir);

 objects_dirlen = strlen(objects_dir);

 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, sizeof(loose_backend), objects_dirlen);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, alloclen, 2);
 backend = git__calloc(1, alloclen);
 GIT_ERROR_CHECK_ALLOC(backend);

 backend->parent.version = GIT_ODB_BACKEND_VERSION;
 backend->objects_dirlen = objects_dirlen;
 memcpy(backend->objects_dir, objects_dir, objects_dirlen);
 if (backend->objects_dir[backend->objects_dirlen - 1] != '/')
  backend->objects_dir[backend->objects_dirlen++] = '/';

 if (compression_level < 0)
  compression_level = Z_BEST_SPEED;

 if (dir_mode == 0)
  dir_mode = GIT_OBJECT_DIR_MODE;

 if (file_mode == 0)
  file_mode = GIT_OBJECT_FILE_MODE;

 backend->object_zlib_level = compression_level;
 backend->fsync_object_files = do_fsync;
 backend->object_dir_mode = dir_mode;
 backend->object_file_mode = file_mode;

 backend->parent.read = &loose_backend__read;
 backend->parent.write = &loose_backend__write;
 backend->parent.read_prefix = &loose_backend__read_prefix;
 backend->parent.read_header = &loose_backend__read_header;
 backend->parent.writestream = &loose_backend__writestream;
 backend->parent.readstream = &loose_backend__readstream;
 backend->parent.exists = &loose_backend__exists;
 backend->parent.exists_prefix = &loose_backend__exists_prefix;
 backend->parent.foreach = &loose_backend__foreach;
 backend->parent.freshen = &loose_backend__freshen;
 backend->parent.free = &loose_backend__free;

 *backend_out = (git_odb_backend *)backend;
 return 0;
}
