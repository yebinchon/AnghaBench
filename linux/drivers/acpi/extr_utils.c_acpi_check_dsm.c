
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; scalar_t__* pointer; } ;
struct TYPE_3__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_2__ buffer; TYPE_1__ integer; } ;
typedef int u64 ;
typedef int guid_t ;
typedef int acpi_handle ;


 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 union acpi_object* acpi_evaluate_dsm (int ,int const*,int,int ,int *) ;

bool acpi_check_dsm(acpi_handle handle, const guid_t *guid, u64 rev, u64 funcs)
{
 int i;
 u64 mask = 0;
 union acpi_object *obj;

 if (funcs == 0)
  return 0;

 obj = acpi_evaluate_dsm(handle, guid, rev, 0, ((void*)0));
 if (!obj)
  return 0;


 if (obj->type == ACPI_TYPE_INTEGER)
  mask = obj->integer.value;
 else if (obj->type == ACPI_TYPE_BUFFER)
  for (i = 0; i < obj->buffer.length && i < 8; i++)
   mask |= (((u64)obj->buffer.pointer[i]) << (i * 8));
 ACPI_FREE(obj);





 if ((mask & 0x1) && (mask & funcs) == funcs)
  return 1;

 return 0;
}
