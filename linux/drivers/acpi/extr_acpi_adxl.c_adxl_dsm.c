
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; union acpi_object* elements; } ;
struct TYPE_3__ {int value; } ;
union acpi_object {int type; TYPE_2__ package; TYPE_1__ integer; } ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;
 int ADXL_REVISION ;
 union acpi_object* acpi_evaluate_dsm_typed (int ,int *,int ,int,union acpi_object*,int) ;
 int adxl_guid ;
 int handle ;
 int pr_info (char*,int) ;

__attribute__((used)) static union acpi_object *adxl_dsm(int cmd, union acpi_object argv[])
{
 union acpi_object *obj, *o;

 obj = acpi_evaluate_dsm_typed(handle, &adxl_guid, ADXL_REVISION,
          cmd, argv, ACPI_TYPE_PACKAGE);
 if (!obj) {
  pr_info("DSM call failed for cmd=%d\n", cmd);
  return ((void*)0);
 }

 if (obj->package.count != 2) {
  pr_info("Bad pkg count %d\n", obj->package.count);
  goto err;
 }

 o = obj->package.elements;
 if (o->type != ACPI_TYPE_INTEGER) {
  pr_info("Bad 1st element type %d\n", o->type);
  goto err;
 }
 if (o->integer.value) {
  pr_info("Bad ret val %llu\n", o->integer.value);
  goto err;
 }

 o = obj->package.elements + 1;
 if (o->type != ACPI_TYPE_PACKAGE) {
  pr_info("Bad 2nd element type %d\n", o->type);
  goto err;
 }
 return obj;

err:
 ACPI_FREE(obj);
 return ((void*)0);
}
