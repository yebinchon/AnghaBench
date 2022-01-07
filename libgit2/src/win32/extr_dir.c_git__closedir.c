
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ h; } ;
typedef TYPE_1__ git__DIR ;


 int FindClose (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int git__free (TYPE_1__*) ;

int git__closedir(git__DIR *d)
{
 if (!d)
  return 0;

 if (d->h != INVALID_HANDLE_VALUE) {
  FindClose(d->h);
  d->h = INVALID_HANDLE_VALUE;
 }

 git__free(d);
 return 0;
}
