
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ have_repository; } ;
struct TYPE_3__ {scalar_t__ gitdir; } ;


 TYPE_2__* startup_info ;
 TYPE_1__* the_repository ;

int have_git_dir(void)
{
 return startup_info->have_repository
  || the_repository->gitdir;
}
