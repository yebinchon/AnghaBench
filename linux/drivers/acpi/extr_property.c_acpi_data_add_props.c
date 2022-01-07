
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct acpi_device_properties {int list; union acpi_object const* properties; int const* guid; } ;
struct acpi_device_data {int properties; } ;
typedef int guid_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct acpi_device_properties* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

struct acpi_device_properties *
acpi_data_add_props(struct acpi_device_data *data, const guid_t *guid,
      const union acpi_object *properties)
{
 struct acpi_device_properties *props;

 props = kzalloc(sizeof(*props), GFP_KERNEL);
 if (props) {
  INIT_LIST_HEAD(&props->list);
  props->guid = guid;
  props->properties = properties;
  list_add_tail(&props->list, &data->properties);
 }

 return props;
}
