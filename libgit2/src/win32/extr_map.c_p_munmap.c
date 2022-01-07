
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fmh; int * data; } ;
typedef TYPE_1__ git_map ;


 int CloseHandle (int *) ;
 int GIT_ERROR_OS ;
 int UnmapViewOfFile (int *) ;
 int assert (int ) ;
 int git_error_set (int ,char*) ;

int p_munmap(git_map *map)
{
 int error = 0;

 assert(map != ((void*)0));

 if (map->data) {
  if (!UnmapViewOfFile(map->data)) {
   git_error_set(GIT_ERROR_OS, "failed to munmap. Could not unmap view of file");
   error = -1;
  }
  map->data = ((void*)0);
 }

 if (map->fmh) {
  if (!CloseHandle(map->fmh)) {
   git_error_set(GIT_ERROR_OS, "failed to munmap. Could not close handle");
   error = -1;
  }
  map->fmh = ((void*)0);
 }

 return error;
}
