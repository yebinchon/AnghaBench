
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int length; void* pointer; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ buffer; } ;


 union acpi_object* ACPI_ALLOCATE (int) ;
 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int WARN_ONCE (int,char*,scalar_t__) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static union acpi_object *int_to_buf(union acpi_object *integer)
{
 union acpi_object *buf = ACPI_ALLOCATE(sizeof(*buf) + 4);
 void *dst = ((void*)0);

 if (!buf)
  goto err;

 if (integer->type != ACPI_TYPE_INTEGER) {
  WARN_ONCE(1, "BIOS bug, unexpected element type: %d\n",
    integer->type);
  goto err;
 }

 dst = buf + 1;
 buf->type = ACPI_TYPE_BUFFER;
 buf->buffer.length = 4;
 buf->buffer.pointer = dst;
 memcpy(dst, &integer->integer.value, 4);
err:
 ACPI_FREE(integer);
 return buf;
}
