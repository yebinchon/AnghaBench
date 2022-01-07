
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int charge_mode; TYPE_1__* machinfo; } ;
struct TYPE_3__ {int (* charge ) (int ) ;} ;


 int CHRG_ERROR ;
 int SHARPSL_LED_ERROR ;
 TYPE_2__ sharpsl_pm ;
 int sharpsl_pm_led (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void sharpsl_charge_error(void)
{
 sharpsl_pm_led(SHARPSL_LED_ERROR);
 sharpsl_pm.machinfo->charge(0);
 sharpsl_pm.charge_mode = CHRG_ERROR;
}
