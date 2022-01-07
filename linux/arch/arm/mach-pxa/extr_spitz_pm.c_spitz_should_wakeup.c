
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; int charge_mode; TYPE_1__* machinfo; int flags; } ;
struct TYPE_3__ {int (* read_devdata ) (int ) ;int (* charge ) (int ) ;} ;


 int CHRG_OFF ;
 int GPIO_bit (int ) ;
 int PEDR ;
 int PKSR ;
 int PWER_RTC ;
 int SHARPSL_DO_OFFLINE_CHRG ;
 int SHARPSL_LED_OFF ;
 int SHARPSL_STATUS_ACIN ;
 int SPITZ_GPIO_KEY_INT ;
 int SPITZ_GPIO_SYNC ;
 int dev_dbg (int ,char*,...) ;
 TYPE_2__ sharpsl_pm ;
 int sharpsl_pm_led (int ) ;
 int spitz_last_ac_status ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int spitz_should_wakeup(unsigned int resume_on_alarm)
{
 int is_resume = 0;
 int acin = sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_ACIN);

 if (spitz_last_ac_status != acin) {
  if (acin) {

   sharpsl_pm.flags |= SHARPSL_DO_OFFLINE_CHRG;
   dev_dbg(sharpsl_pm.dev, "AC Inserted\n");
  } else {

   dev_dbg(sharpsl_pm.dev, "AC Removed\n");
   sharpsl_pm_led(SHARPSL_LED_OFF);
   sharpsl_pm.machinfo->charge(0);
   sharpsl_pm.charge_mode = CHRG_OFF;
  }
  spitz_last_ac_status = acin;

  return 0;
 }

 if (PEDR & GPIO_bit(SPITZ_GPIO_KEY_INT))
  is_resume |= GPIO_bit(SPITZ_GPIO_KEY_INT);

 if (PKSR & GPIO_bit(SPITZ_GPIO_SYNC))
  is_resume |= GPIO_bit(SPITZ_GPIO_SYNC);

 if (resume_on_alarm && (PEDR & PWER_RTC))
  is_resume |= PWER_RTC;

 dev_dbg(sharpsl_pm.dev, "is_resume: %x\n", is_resume);
 return is_resume;
}
