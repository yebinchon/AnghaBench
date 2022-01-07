
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int git_buf_dispose (int *) ;
 TYPE_1__* git_sysdir__dirs ;

__attribute__((used)) static void git_sysdir_global_shutdown(void)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(git_sysdir__dirs); ++i)
  git_buf_dispose(&git_sysdir__dirs[i].buf);
}
