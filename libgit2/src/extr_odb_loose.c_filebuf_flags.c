
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object_zlib_level; scalar_t__ fsync_object_files; } ;
typedef TYPE_1__ loose_backend ;


 int GIT_FILEBUF_DEFLATE_SHIFT ;
 int GIT_FILEBUF_FSYNC ;
 int GIT_FILEBUF_TEMPORARY ;
 scalar_t__ git_repository__fsync_gitdir ;

__attribute__((used)) static int filebuf_flags(loose_backend *backend)
{
 int flags = GIT_FILEBUF_TEMPORARY |
  (backend->object_zlib_level << GIT_FILEBUF_DEFLATE_SHIFT);

 if (backend->fsync_object_files || git_repository__fsync_gitdir)
  flags |= GIT_FILEBUF_FSYNC;

 return flags;
}
