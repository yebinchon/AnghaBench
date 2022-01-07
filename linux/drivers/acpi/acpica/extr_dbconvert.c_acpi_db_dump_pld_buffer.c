
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; int pointer; } ;
struct TYPE_3__ {union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ buffer; TYPE_1__ package; } ;
struct acpi_pld_info {int horizontal_offset; int vertical_offset; int order; int rotation; int reference; int card_cage_number; int cabinet_number; int ospm_eject_required; int ejectable; int bay; int group_position; int group_token; int group_orientation; int shape; int horizontal_position; int vertical_position; int panel; int lid; int dock; int user_visible; int height; int width; int blue; int green; int red; int ignore_color; int revision; } ;
typedef struct acpi_pld_info u8 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_pld_info*) ;
 int ACPI_PLD_OUTPUT ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int DB_BYTE_DISPLAY ;
 struct acpi_pld_info* acpi_db_encode_pld_buffer (struct acpi_pld_info*) ;
 int acpi_decode_pld_buffer (int ,int,struct acpi_pld_info**) ;
 int acpi_os_printf (char*,...) ;
 int acpi_ut_dump_buffer (struct acpi_pld_info*,int,int ,int ) ;
 scalar_t__ memcmp (struct acpi_pld_info*,int ,int) ;

void acpi_db_dump_pld_buffer(union acpi_object *obj_desc)
{
 union acpi_object *buffer_desc;
 struct acpi_pld_info *pld_info;
 u8 *new_buffer;
 acpi_status status;



 if (obj_desc->type != ACPI_TYPE_PACKAGE) {
  return;
 }

 buffer_desc = &obj_desc->package.elements[0];
 if (buffer_desc->type != ACPI_TYPE_BUFFER) {
  return;
 }



 status = acpi_decode_pld_buffer(buffer_desc->buffer.pointer,
     buffer_desc->buffer.length, &pld_info);
 if (ACPI_FAILURE(status)) {
  return;
 }



 new_buffer = acpi_db_encode_pld_buffer(pld_info);
 if (!new_buffer) {
  goto exit;
 }



 if (memcmp(new_buffer, buffer_desc->buffer.pointer,
     buffer_desc->buffer.length)) {
  acpi_os_printf
      ("Converted _PLD buffer does not compare. New:\n");

  acpi_ut_dump_buffer(new_buffer,
        buffer_desc->buffer.length, DB_BYTE_DISPLAY,
        0);
 }



 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Revision", pld_info->revision);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_IgnoreColor",
         pld_info->ignore_color);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Red", pld_info->red);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Green", pld_info->green);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Blue", pld_info->blue);



 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Width", pld_info->width);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Height", pld_info->height);



 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_UserVisible",
         pld_info->user_visible);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Dock", pld_info->dock);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Lid", pld_info->lid);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Panel", pld_info->panel);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_VerticalPosition",
         pld_info->vertical_position);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_HorizontalPosition",
         pld_info->horizontal_position);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Shape", pld_info->shape);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_GroupOrientation",
         pld_info->group_orientation);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_GroupToken",
         pld_info->group_token);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_GroupPosition",
         pld_info->group_position);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Bay", pld_info->bay);



 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Ejectable", pld_info->ejectable);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_EjectRequired",
         pld_info->ospm_eject_required);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_CabinetNumber",
         pld_info->cabinet_number);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_CardCageNumber",
         pld_info->card_cage_number);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Reference", pld_info->reference);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Rotation", pld_info->rotation);
 acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_Order", pld_info->order);



 if (buffer_desc->buffer.length > 16) {
  acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_VerticalOffset",
          pld_info->vertical_offset);
  acpi_os_printf(ACPI_PLD_OUTPUT, "PLD_HorizontalOffset",
          pld_info->horizontal_offset);
 }

 ACPI_FREE(new_buffer);
exit:
 ACPI_FREE(pld_info);
}
