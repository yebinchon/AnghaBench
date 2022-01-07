
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; size_t size; } ;
typedef TYPE_1__ git_buf ;


 int assert (int) ;
 int git_path_root (char*) ;

void git_path_trim_slashes(git_buf *path)
{
 int ceiling = git_path_root(path->ptr) + 1;
 assert(ceiling >= 0);

 while (path->size > (size_t)ceiling) {
  if (path->ptr[path->size-1] != '/')
   break;

  path->ptr[path->size-1] = '\0';
  path->size--;
 }
}
