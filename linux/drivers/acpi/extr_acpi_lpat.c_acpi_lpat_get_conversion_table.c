
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; union acpi_object* elements; } ;
struct TYPE_3__ {scalar_t__ value; } ;
union acpi_object {scalar_t__ type; TYPE_2__ package; TYPE_1__ integer; } ;
struct acpi_lpat_conversion_table {int lpat_count; struct acpi_lpat* lpat; } ;
struct acpi_lpat {int dummy; } ;
struct acpi_buffer {int* pointer; int * member_1; int member_0; } ;
typedef int s64 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int GFP_KERNEL ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 struct acpi_lpat_conversion_table* kzalloc (int,int ) ;

struct acpi_lpat_conversion_table *acpi_lpat_get_conversion_table(acpi_handle
          handle)
{
 struct acpi_lpat_conversion_table *lpat_table = ((void*)0);
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj_p, *obj_e;
 int *lpat, i;
 acpi_status status;

 status = acpi_evaluate_object(handle, "LPAT", ((void*)0), &buffer);
 if (ACPI_FAILURE(status))
  return ((void*)0);

 obj_p = (union acpi_object *)buffer.pointer;
 if (!obj_p || (obj_p->type != ACPI_TYPE_PACKAGE) ||
     (obj_p->package.count % 2) || (obj_p->package.count < 4))
  goto out;

 lpat = kcalloc(obj_p->package.count, sizeof(int), GFP_KERNEL);
 if (!lpat)
  goto out;

 for (i = 0; i < obj_p->package.count; i++) {
  obj_e = &obj_p->package.elements[i];
  if (obj_e->type != ACPI_TYPE_INTEGER) {
   kfree(lpat);
   goto out;
  }
  lpat[i] = (s64)obj_e->integer.value;
 }

 lpat_table = kzalloc(sizeof(*lpat_table), GFP_KERNEL);
 if (!lpat_table) {
  kfree(lpat);
  goto out;
 }

 lpat_table->lpat = (struct acpi_lpat *)lpat;
 lpat_table->lpat_count = obj_p->package.count / 2;

out:
 kfree(buffer.pointer);
 return lpat_table;
}
