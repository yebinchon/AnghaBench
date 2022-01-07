
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_hardware_id {int list; int id; } ;
struct TYPE_2__ {int hardware_id; } ;
struct acpi_device_pnp {TYPE_1__ type; int ids; } ;


 int GFP_KERNEL ;
 int kfree (struct acpi_hardware_id*) ;
 struct acpi_hardware_id* kmalloc (int,int ) ;
 int kstrdup_const (char const*,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void acpi_add_id(struct acpi_device_pnp *pnp, const char *dev_id)
{
 struct acpi_hardware_id *id;

 id = kmalloc(sizeof(*id), GFP_KERNEL);
 if (!id)
  return;

 id->id = kstrdup_const(dev_id, GFP_KERNEL);
 if (!id->id) {
  kfree(id);
  return;
 }

 list_add_tail(&id->list, &pnp->ids);
 pnp->type.hardware_id = 1;
}
