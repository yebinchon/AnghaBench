
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * complete; int error; int done; int working; } ;


 int atomic_set (int *,int) ;
 int reinit_completion (int *) ;
 TYPE_1__ suspend_data ;
 int suspend_work ;
 int suspending ;

__attribute__((used)) static int pseries_prepare_late(void)
{
 atomic_set(&suspending, 1);
 atomic_set(&suspend_data.working, 0);
 atomic_set(&suspend_data.done, 0);
 atomic_set(&suspend_data.error, 0);
 suspend_data.complete = &suspend_work;
 reinit_completion(&suspend_work);
 return 0;
}
