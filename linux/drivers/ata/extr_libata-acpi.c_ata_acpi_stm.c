
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * pointer; } ;
union acpi_object {TYPE_1__ buffer; void* type; } ;
typedef int u8 ;
struct TYPE_6__ {TYPE_2__* device; } ;
struct ata_port {int tdev; TYPE_3__ link; } ;
struct ata_acpi_gtm {int dummy; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef scalar_t__ acpi_status ;
struct TYPE_5__ {scalar_t__ id; } ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_HANDLE (int *) ;
 void* ACPI_TYPE_BUFFER ;
 scalar_t__ AE_NOT_FOUND ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;
 int ata_port_err (struct ata_port*,char*,scalar_t__) ;

int ata_acpi_stm(struct ata_port *ap, const struct ata_acpi_gtm *stm)
{
 acpi_status status;
 struct ata_acpi_gtm stm_buf = *stm;
 struct acpi_object_list input;
 union acpi_object in_params[3];

 in_params[0].type = ACPI_TYPE_BUFFER;
 in_params[0].buffer.length = sizeof(struct ata_acpi_gtm);
 in_params[0].buffer.pointer = (u8 *)&stm_buf;

 in_params[1].type = ACPI_TYPE_BUFFER;
 in_params[1].buffer.length = 512;
 in_params[1].buffer.pointer = (u8 *)ap->link.device[0].id;
 in_params[2].type = ACPI_TYPE_BUFFER;
 in_params[2].buffer.length = 512;
 in_params[2].buffer.pointer = (u8 *)ap->link.device[1].id;

 input.count = 3;
 input.pointer = in_params;

 status = acpi_evaluate_object(ACPI_HANDLE(&ap->tdev), "_STM",
          &input, ((void*)0));

 if (status == AE_NOT_FOUND)
  return -ENOENT;
 if (ACPI_FAILURE(status)) {
  ata_port_err(ap, "ACPI set timing mode failed (status=0x%x)\n",
        status);
  return -EINVAL;
 }
 return 0;
}
