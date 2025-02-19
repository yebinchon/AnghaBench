
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int value; } ;
struct TYPE_7__ {int pointer; } ;
struct TYPE_6__ {int handle; } ;
struct TYPE_5__ {size_t count; union acpi_object* elements; } ;
union acpi_object {int type; TYPE_4__ integer; TYPE_3__ string; TYPE_2__ reference; TYPE_1__ package; } ;
typedef size_t u32 ;
struct fwnode_reference_args {size_t nargs; int * args; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_device_data {int dummy; } ;
struct acpi_device {int dummy; } ;


 int ACPI_TYPE_ANY ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int ACPI_TYPE_STRING ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 size_t NR_FWNODE_REFERENCE_ARGS ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_data_get_property (struct acpi_device_data const*,char const*,int ,union acpi_object const**) ;
 struct acpi_device_data* acpi_device_data_of_node (struct fwnode_handle const*) ;
 struct fwnode_handle* acpi_fwnode_get_named_child_node (struct fwnode_handle*,int ) ;
 void* acpi_fwnode_handle (struct acpi_device*) ;

int __acpi_node_get_property_reference(const struct fwnode_handle *fwnode,
 const char *propname, size_t index, size_t num_args,
 struct fwnode_reference_args *args)
{
 const union acpi_object *element, *end;
 const union acpi_object *obj;
 const struct acpi_device_data *data;
 struct acpi_device *device;
 int ret, idx = 0;

 data = acpi_device_data_of_node(fwnode);
 if (!data)
  return -ENOENT;

 ret = acpi_data_get_property(data, propname, ACPI_TYPE_ANY, &obj);
 if (ret)
  return ret == -EINVAL ? -ENOENT : -EINVAL;





 if (obj->type == ACPI_TYPE_LOCAL_REFERENCE) {
  if (index)
   return -EINVAL;

  ret = acpi_bus_get_device(obj->reference.handle, &device);
  if (ret)
   return ret == -ENODEV ? -EINVAL : ret;

  args->fwnode = acpi_fwnode_handle(device);
  args->nargs = 0;
  return 0;
 }
 if (obj->type != ACPI_TYPE_PACKAGE)
  return -EINVAL;
 if (index >= obj->package.count)
  return -ENOENT;

 element = obj->package.elements;
 end = element + obj->package.count;

 while (element < end) {
  u32 nargs, i;

  if (element->type == ACPI_TYPE_LOCAL_REFERENCE) {
   struct fwnode_handle *ref_fwnode;

   ret = acpi_bus_get_device(element->reference.handle,
        &device);
   if (ret)
    return -EINVAL;

   nargs = 0;
   element++;





   for (ref_fwnode = acpi_fwnode_handle(device);
        element < end && element->type == ACPI_TYPE_STRING;
        element++) {
    ref_fwnode = acpi_fwnode_get_named_child_node(
     ref_fwnode, element->string.pointer);
    if (!ref_fwnode)
     return -EINVAL;
   }


   for (i = 0; element + i < end && i < num_args; i++) {
    int type = element[i].type;

    if (type == ACPI_TYPE_INTEGER)
     nargs++;
    else if (type == ACPI_TYPE_LOCAL_REFERENCE)
     break;
    else
     return -EINVAL;
   }

   if (nargs > NR_FWNODE_REFERENCE_ARGS)
    return -EINVAL;

   if (idx == index) {
    args->fwnode = ref_fwnode;
    args->nargs = nargs;
    for (i = 0; i < nargs; i++)
     args->args[i] = element[i].integer.value;

    return 0;
   }

   element += nargs;
  } else if (element->type == ACPI_TYPE_INTEGER) {
   if (idx == index)
    return -ENOENT;
   element++;
  } else {
   return -EINVAL;
  }

  idx++;
 }

 return -ENOENT;
}
