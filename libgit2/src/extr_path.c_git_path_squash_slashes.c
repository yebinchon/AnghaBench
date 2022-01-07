
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; char* ptr; } ;
typedef TYPE_1__ git_buf ;



void git_path_squash_slashes(git_buf *path)
{
 char *p, *q;

 if (path->size == 0)
  return;

 for (p = path->ptr, q = path->ptr; *q; p++, q++) {
  *p = *q;

  while (*q == '/' && *(q+1) == '/') {
   path->size--;
   q++;
  }
 }

 *p = '\0';
}
