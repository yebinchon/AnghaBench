
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct device {int driver; } ;
struct acpi_nfit_desc {int dummy; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int GFP_KERNEL ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int acpi_nfit_desc_init (struct acpi_nfit_desc*,struct device*) ;
 int acpi_nfit_init (struct acpi_nfit_desc*,int ,int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 struct acpi_nfit_desc* dev_get_drvdata (struct device*) ;
 struct acpi_nfit_desc* devm_kzalloc (struct device*,int,int ) ;
 int flush_workqueue (int ) ;
 int kfree (union acpi_object*) ;
 int nfit_wq ;

__attribute__((used)) static void acpi_nfit_update_notify(struct device *dev, acpi_handle handle)
{
 struct acpi_nfit_desc *acpi_desc = dev_get_drvdata(dev);
 struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;
 int ret;

 if (!dev->driver) {

  dev_dbg(dev, "no driver found for dev\n");
  return;
 }

 if (!acpi_desc) {
  acpi_desc = devm_kzalloc(dev, sizeof(*acpi_desc), GFP_KERNEL);
  if (!acpi_desc)
   return;
  acpi_nfit_desc_init(acpi_desc, dev);
 } else {




  flush_workqueue(nfit_wq);
 }


 status = acpi_evaluate_object(handle, "_FIT", ((void*)0), &buf);
 if (ACPI_FAILURE(status)) {
  dev_err(dev, "failed to evaluate _FIT\n");
  return;
 }

 obj = buf.pointer;
 if (obj->type == ACPI_TYPE_BUFFER) {
  ret = acpi_nfit_init(acpi_desc, obj->buffer.pointer,
    obj->buffer.length);
  if (ret)
   dev_err(dev, "failed to merge updated NFIT\n");
 } else
  dev_err(dev, "Invalid _FIT\n");
 kfree(buf.pointer);
}
