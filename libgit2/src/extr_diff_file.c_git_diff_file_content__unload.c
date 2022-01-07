
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* data; scalar_t__ len; } ;
struct TYPE_4__ {int flags; int * blob; TYPE_2__ map; } ;
typedef TYPE_1__ git_diff_file_content ;
typedef int git_blob ;


 int GIT_DIFF_FLAG__FREE_BLOB ;
 int GIT_DIFF_FLAG__FREE_DATA ;
 int GIT_DIFF_FLAG__LOADED ;
 int GIT_DIFF_FLAG__UNMAP_DATA ;
 int git__free (char*) ;
 int git_blob_free (int *) ;
 int git_futils_mmap_free (TYPE_2__*) ;

void git_diff_file_content__unload(git_diff_file_content *fc)
{
 if ((fc->flags & GIT_DIFF_FLAG__LOADED) == 0)
  return;

 if (fc->flags & GIT_DIFF_FLAG__FREE_DATA) {
  git__free(fc->map.data);
  fc->map.data = "";
  fc->map.len = 0;
  fc->flags &= ~GIT_DIFF_FLAG__FREE_DATA;
 }
 else if (fc->flags & GIT_DIFF_FLAG__UNMAP_DATA) {
  git_futils_mmap_free(&fc->map);
  fc->map.data = "";
  fc->map.len = 0;
  fc->flags &= ~GIT_DIFF_FLAG__UNMAP_DATA;
 }

 if (fc->flags & GIT_DIFF_FLAG__FREE_BLOB) {
  git_blob_free((git_blob *)fc->blob);
  fc->blob = ((void*)0);
  fc->flags &= ~GIT_DIFF_FLAG__FREE_BLOB;
 }

 fc->flags &= ~GIT_DIFF_FLAG__LOADED;
}
