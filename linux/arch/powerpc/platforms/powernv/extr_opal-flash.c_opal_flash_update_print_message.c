
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 scalar_t__ FLASH_IMG_READY ;
 TYPE_2__ image_data ;
 int msleep (int) ;
 int pr_alert (char*,...) ;
 TYPE_1__ update_flash_data ;

void opal_flash_update_print_message(void)
{
 if (update_flash_data.status != FLASH_IMG_READY)
  return;

 pr_alert("FLASH: Flashing new firmware\n");
 pr_alert("FLASH: Image is %u bytes\n", image_data.size);
 pr_alert("FLASH: Performing flash and reboot/shutdown\n");
 pr_alert("FLASH: This will take several minutes. Do not power off!\n");


 msleep(500);
}
