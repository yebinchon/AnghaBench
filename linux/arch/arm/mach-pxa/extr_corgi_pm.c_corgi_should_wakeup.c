
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; int charge_mode; TYPE_1__* machinfo; int flags; } ;
struct TYPE_3__ {int (* charge ) (int ) ;scalar_t__ (* read_devdata ) (int ) ;} ;


 int CHRG_OFF ;
 int CORGI_GPIO_AC_IN ;
 int CORGI_GPIO_CHRG_FULL ;
 int CORGI_GPIO_KEY_INT ;
 int CORGI_GPIO_WAKEUP ;
 int GPIO_bit (int ) ;
 int PEDR ;
 int PWER_RTC ;
 int SHARPSL_DO_OFFLINE_CHRG ;
 int SHARPSL_LED_OFF ;
 int SHARPSL_STATUS_ACIN ;
 int dev_dbg (int ,char*,...) ;
 int gpio_get_value (int ) ;
 TYPE_2__ sharpsl_pm ;
 int sharpsl_pm_led (int ) ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int corgi_should_wakeup(unsigned int resume_on_alarm)
{
 int is_resume = 0;

 dev_dbg(sharpsl_pm.dev, "PEDR = %x, GPIO_AC_IN = %d, "
  "GPIO_CHRG_FULL = %d, GPIO_KEY_INT = %d, GPIO_WAKEUP = %d\n",
  PEDR, gpio_get_value(CORGI_GPIO_AC_IN),
  gpio_get_value(CORGI_GPIO_CHRG_FULL),
  gpio_get_value(CORGI_GPIO_KEY_INT),
  gpio_get_value(CORGI_GPIO_WAKEUP));

 if ((PEDR & GPIO_bit(CORGI_GPIO_AC_IN))) {
  if (sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_ACIN)) {

   dev_dbg(sharpsl_pm.dev, "ac insert\n");
   sharpsl_pm.flags |= SHARPSL_DO_OFFLINE_CHRG;
  } else {

   dev_dbg(sharpsl_pm.dev, "ac remove\n");
   sharpsl_pm_led(SHARPSL_LED_OFF);
   sharpsl_pm.machinfo->charge(0);
   sharpsl_pm.charge_mode = CHRG_OFF;
  }
 }

 if ((PEDR & GPIO_bit(CORGI_GPIO_CHRG_FULL)))
  dev_dbg(sharpsl_pm.dev, "Charge full interrupt\n");

 if (PEDR & GPIO_bit(CORGI_GPIO_KEY_INT))
  is_resume |= GPIO_bit(CORGI_GPIO_KEY_INT);

 if (PEDR & GPIO_bit(CORGI_GPIO_WAKEUP))
  is_resume |= GPIO_bit(CORGI_GPIO_WAKEUP);

 if (resume_on_alarm && (PEDR & PWER_RTC))
  is_resume |= PWER_RTC;

 dev_dbg(sharpsl_pm.dev, "is_resume: %x\n",is_resume);
 return is_resume;
}
