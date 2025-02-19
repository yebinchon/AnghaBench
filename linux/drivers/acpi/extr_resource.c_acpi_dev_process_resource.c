
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win ;
struct resource {int dummy; } ;
struct resource_win {struct resource res; } ;
struct res_proc_context {int (* preproc ) (struct acpi_resource*,int ) ;int error; int preproc_data; } ;
struct acpi_resource {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int acpi_dev_new_resource_entry (struct resource_win*,struct res_proc_context*) ;
 scalar_t__ acpi_dev_resource_address_space (struct acpi_resource*,struct resource_win*) ;
 scalar_t__ acpi_dev_resource_ext_address_space (struct acpi_resource*,struct resource_win*) ;
 scalar_t__ acpi_dev_resource_interrupt (struct acpi_resource*,int,struct resource*) ;
 scalar_t__ acpi_dev_resource_io (struct acpi_resource*,struct resource*) ;
 scalar_t__ acpi_dev_resource_memory (struct acpi_resource*,struct resource*) ;
 int memset (struct resource_win*,int ,int) ;
 int stub1 (struct acpi_resource*,int ) ;

__attribute__((used)) static acpi_status acpi_dev_process_resource(struct acpi_resource *ares,
          void *context)
{
 struct res_proc_context *c = context;
 struct resource_win win;
 struct resource *res = &win.res;
 int i;

 if (c->preproc) {
  int ret;

  ret = c->preproc(ares, c->preproc_data);
  if (ret < 0) {
   c->error = ret;
   return AE_CTRL_TERMINATE;
  } else if (ret > 0) {
   return AE_OK;
  }
 }

 memset(&win, 0, sizeof(win));

 if (acpi_dev_resource_memory(ares, res)
     || acpi_dev_resource_io(ares, res)
     || acpi_dev_resource_address_space(ares, &win)
     || acpi_dev_resource_ext_address_space(ares, &win))
  return acpi_dev_new_resource_entry(&win, c);

 for (i = 0; acpi_dev_resource_interrupt(ares, i, res); i++) {
  acpi_status status;

  status = acpi_dev_new_resource_entry(&win, c);
  if (ACPI_FAILURE(status))
   return status;
 }

 return AE_OK;
}
