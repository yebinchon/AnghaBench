
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* guess ) (int *) ;int buf; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int git__on_shutdown (int ) ;
 TYPE_1__* git_sysdir__dirs ;
 int git_sysdir_global_shutdown ;
 int stub1 (int *) ;

int git_sysdir_global_init(void)
{
 size_t i;
 int error = 0;

 for (i = 0; !error && i < ARRAY_SIZE(git_sysdir__dirs); i++)
  error = git_sysdir__dirs[i].guess(&git_sysdir__dirs[i].buf);

 git__on_shutdown(git_sysdir_global_shutdown);

 return error;
}
