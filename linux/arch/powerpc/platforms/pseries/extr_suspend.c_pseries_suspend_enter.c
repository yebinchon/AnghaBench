
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_3__ {int done; } ;


 int atomic_set (int *,int) ;
 int rtas_suspend_last_cpu (TYPE_1__*) ;
 TYPE_1__ suspend_data ;
 int suspending ;

__attribute__((used)) static int pseries_suspend_enter(suspend_state_t state)
{
 int rc = rtas_suspend_last_cpu(&suspend_data);

 atomic_set(&suspending, 0);
 atomic_set(&suspend_data.done, 1);
 return rc;
}
