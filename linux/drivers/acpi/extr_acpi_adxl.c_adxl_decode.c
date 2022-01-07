
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; int type; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {TYPE_2__ integer; TYPE_1__ package; int type; } ;
typedef int u64 ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;
 int ADXL_IDX_FORWARD_TRANSLATE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int adxl_component_names ;
 int adxl_count ;
 union acpi_object* adxl_dsm (int ,union acpi_object*) ;

int adxl_decode(u64 addr, u64 component_values[])
{
 union acpi_object argv4[2], *results, *r;
 int i, cnt;

 if (!adxl_component_names)
  return -EOPNOTSUPP;

 argv4[0].type = ACPI_TYPE_PACKAGE;
 argv4[0].package.count = 1;
 argv4[0].package.elements = &argv4[1];
 argv4[1].integer.type = ACPI_TYPE_INTEGER;
 argv4[1].integer.value = addr;

 results = adxl_dsm(ADXL_IDX_FORWARD_TRANSLATE, argv4);
 if (!results)
  return -EINVAL;

 r = results->package.elements + 1;
 cnt = r->package.count;
 if (cnt != adxl_count) {
  ACPI_FREE(results);
  return -EINVAL;
 }
 r = r->package.elements;

 for (i = 0; i < cnt; i++)
  component_values[i] = r[i].integer.value;

 ACPI_FREE(results);

 return 0;
}
