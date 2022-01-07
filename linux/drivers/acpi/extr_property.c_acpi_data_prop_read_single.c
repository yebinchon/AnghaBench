
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* pointer; } ;
struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_2__ string; TYPE_1__ integer; } ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct acpi_device_data {int dummy; } ;
typedef enum dev_prop_type { ____Placeholder_dev_prop_type } dev_prop_type ;


 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_STRING ;
 int DEV_PROP_STRING ;


 int DEV_PROP_U64 ;

 int EINVAL ;
 int EOVERFLOW ;
 int U16_MAX ;
 int U32_MAX ;
 int U8_MAX ;
 int acpi_data_get_property (struct acpi_device_data const*,char const*,int ,union acpi_object const**) ;

__attribute__((used)) static int acpi_data_prop_read_single(const struct acpi_device_data *data,
          const char *propname,
          enum dev_prop_type proptype, void *val)
{
 const union acpi_object *obj;
 int ret;

 if (!val)
  return -EINVAL;

 if (proptype >= 128 && proptype <= DEV_PROP_U64) {
  ret = acpi_data_get_property(data, propname, ACPI_TYPE_INTEGER, &obj);
  if (ret)
   return ret;

  switch (proptype) {
  case 128:
   if (obj->integer.value > U8_MAX)
    return -EOVERFLOW;
   *(u8 *)val = obj->integer.value;
   break;
  case 130:
   if (obj->integer.value > U16_MAX)
    return -EOVERFLOW;
   *(u16 *)val = obj->integer.value;
   break;
  case 129:
   if (obj->integer.value > U32_MAX)
    return -EOVERFLOW;
   *(u32 *)val = obj->integer.value;
   break;
  default:
   *(u64 *)val = obj->integer.value;
   break;
  }
 } else if (proptype == DEV_PROP_STRING) {
  ret = acpi_data_get_property(data, propname, ACPI_TYPE_STRING, &obj);
  if (ret)
   return ret;

  *(char **)val = obj->string.pointer;

  return 1;
 } else {
  ret = -EINVAL;
 }
 return ret;
}
