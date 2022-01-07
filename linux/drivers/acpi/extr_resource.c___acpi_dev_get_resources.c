
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_proc_context {int (* preproc ) (struct acpi_resource*,void*) ;int count; int error; void* preproc_data; struct list_head* list; } ;
struct list_head {int dummy; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int EIO ;
 int acpi_dev_free_resource_list (struct list_head*) ;
 int acpi_dev_process_resource ;
 int acpi_has_method (int ,char*) ;
 int acpi_walk_resources (int ,char*,int ,struct res_proc_context*) ;
 int list_empty (struct list_head*) ;

__attribute__((used)) static int __acpi_dev_get_resources(struct acpi_device *adev,
        struct list_head *list,
        int (*preproc)(struct acpi_resource *, void *),
        void *preproc_data, char *method)
{
 struct res_proc_context c;
 acpi_status status;

 if (!adev || !adev->handle || !list_empty(list))
  return -EINVAL;

 if (!acpi_has_method(adev->handle, method))
  return 0;

 c.list = list;
 c.preproc = preproc;
 c.preproc_data = preproc_data;
 c.count = 0;
 c.error = 0;
 status = acpi_walk_resources(adev->handle, method,
         acpi_dev_process_resource, &c);
 if (ACPI_FAILURE(status)) {
  acpi_dev_free_resource_list(list);
  return c.error ? c.error : -EIO;
 }

 return c.count;
}
