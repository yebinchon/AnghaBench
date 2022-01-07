
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct admhcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int int_enable; } ;


 int ADMHC_INTR_INSM ;
 int admhc_intr_enable (struct admhcd*,int) ;
 int admhc_readl (struct admhcd*,int *) ;

__attribute__((used)) static int admhc_root_hub_state_changes(struct admhcd *ahcd, int changed,
  int any_connected)
{

 if (admhc_readl(ahcd, &ahcd->regs->int_enable) & ADMHC_INTR_INSM)
  return 0;


 if (!changed) {
  admhc_intr_enable(ahcd, ADMHC_INTR_INSM);
  return 0;
 }

 return 1;
}
