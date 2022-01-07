
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;


 int at91_suspend_sram_fn (int *) ;
 int flush_cache_all () ;
 int outer_disable () ;
 TYPE_1__ soc_pm ;

__attribute__((used)) static int at91_suspend_finish(unsigned long val)
{
 flush_cache_all();
 outer_disable();

 at91_suspend_sram_fn(&soc_pm.data);

 return 0;
}
