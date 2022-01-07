
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * last_error; } ;


 TYPE_1__* GIT_GLOBAL ;
 int g_git_oom_error ;

void git_error_set_oom(void)
{
 GIT_GLOBAL->last_error = &g_git_oom_error;
}
