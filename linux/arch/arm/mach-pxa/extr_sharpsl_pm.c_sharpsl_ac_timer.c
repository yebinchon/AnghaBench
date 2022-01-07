
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ charge_mode; int dev; TYPE_1__* machinfo; } ;
struct TYPE_3__ {int (* read_devdata ) (int ) ;} ;


 scalar_t__ CHRG_ON ;
 int SHARPSL_STATUS_ACIN ;
 int dev_dbg (int ,char*,int) ;
 int schedule_delayed_work (int *,int ) ;
 int sharpsl_average_clear () ;
 int sharpsl_bat ;
 int sharpsl_charge_off () ;
 int sharpsl_charge_on () ;
 TYPE_2__ sharpsl_pm ;
 int stub1 (int ) ;

__attribute__((used)) static void sharpsl_ac_timer(struct timer_list *unused)
{
 int acin = sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_ACIN);

 dev_dbg(sharpsl_pm.dev, "AC Status: %d\n", acin);

 sharpsl_average_clear();
 if (acin && (sharpsl_pm.charge_mode != CHRG_ON))
  sharpsl_charge_on();
 else if (sharpsl_pm.charge_mode == CHRG_ON)
  sharpsl_charge_off();

 schedule_delayed_work(&sharpsl_bat, 0);
}
