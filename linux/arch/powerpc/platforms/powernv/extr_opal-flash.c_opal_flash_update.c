
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opal_sg_list {int dummy; } ;
typedef int int64_t ;
struct TYPE_2__ {int size; int data; } ;


 int FLASH_UPDATE_CANCEL ;
 int OPAL_PARAMETER ;
 unsigned long __pa (struct opal_sg_list*) ;
 TYPE_1__ image_data ;
 int opal_update_flash (unsigned long) ;
 struct opal_sg_list* opal_vmalloc_to_sg_list (int ,int ) ;
 int pr_alert (char*) ;

__attribute__((used)) static int opal_flash_update(int op)
{
 struct opal_sg_list *list;
 unsigned long addr;
 int64_t rc = OPAL_PARAMETER;

 if (op == FLASH_UPDATE_CANCEL) {
  pr_alert("FLASH: Image update cancelled\n");
  addr = '\0';
  goto flash;
 }

 list = opal_vmalloc_to_sg_list(image_data.data, image_data.size);
 if (!list)
  goto invalid_img;


 addr = __pa(list);

flash:
 rc = opal_update_flash(addr);

invalid_img:
 return rc;
}
