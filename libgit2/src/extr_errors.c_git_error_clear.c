
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * last_error; } ;


 TYPE_1__* GIT_GLOBAL ;
 int SetLastError (int ) ;
 scalar_t__ errno ;
 int set_error (int ,int *) ;

void git_error_clear(void)
{
 if (GIT_GLOBAL->last_error != ((void*)0)) {
  set_error(0, ((void*)0));
  GIT_GLOBAL->last_error = ((void*)0);
 }

 errno = 0;



}
