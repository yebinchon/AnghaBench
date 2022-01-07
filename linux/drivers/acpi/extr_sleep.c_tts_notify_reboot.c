
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int ACPI_STATE_S5 ;
 int NOTIFY_DONE ;
 int acpi_sleep_tts_switch (int ) ;

__attribute__((used)) static int tts_notify_reboot(struct notifier_block *this,
   unsigned long code, void *x)
{
 acpi_sleep_tts_switch(ACPI_STATE_S5);
 return NOTIFY_DONE;
}
