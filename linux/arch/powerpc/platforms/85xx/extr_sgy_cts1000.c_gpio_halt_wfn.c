
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int orderly_poweroff (int) ;

__attribute__((used)) static void gpio_halt_wfn(struct work_struct *work)
{

 orderly_poweroff(1);
}
