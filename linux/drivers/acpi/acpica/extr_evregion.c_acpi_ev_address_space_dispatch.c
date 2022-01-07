
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ (* setup ) (union acpi_operand_object*,int ,struct acpi_connection_info*,void**) ;scalar_t__ (* handler ) (scalar_t__,scalar_t__,scalar_t__,int *,struct acpi_connection_info*,void*) ;int handler_flags; struct acpi_connection_info* context; } ;
struct TYPE_7__ {scalar_t__ space_id; int flags; union acpi_operand_object* handler; scalar_t__ address; int node; } ;
struct TYPE_6__ {void* region_context; } ;
struct TYPE_5__ {scalar_t__ bit_length; scalar_t__ pin_number_index; int access_length; int resource_length; int resource_buffer; } ;
union acpi_operand_object {TYPE_4__ address_space; TYPE_3__ region; TYPE_2__ extra; TYPE_1__ field; } ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct acpi_connection_info {int access_length; int length; int connection; } ;
typedef scalar_t__ acpi_status ;
typedef scalar_t__ acpi_physical_address ;
typedef scalar_t__ (* acpi_adr_space_setup ) (union acpi_operand_object*,int ,struct acpi_connection_info*,void**) ;
typedef scalar_t__ (* acpi_adr_space_handler ) (scalar_t__,scalar_t__,scalar_t__,int *,struct acpi_connection_info*,void*) ;


 int ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ;
 scalar_t__ ACPI_ADR_SPACE_EC ;
 scalar_t__ ACPI_ADR_SPACE_GPIO ;
 scalar_t__ ACPI_ADR_SPACE_GSBUS ;
 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REGION_ACTIVATE ;
 int AE_INFO ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_TIME ;
 int AOPOBJ_SETUP_COMPLETE ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 int acpi_ut_get_node_name (int ) ;
 int acpi_ut_get_region_name (scalar_t__) ;
 int ev_address_space_dispatch ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status
acpi_ev_address_space_dispatch(union acpi_operand_object *region_obj,
          union acpi_operand_object *field_obj,
          u32 function,
          u32 region_offset, u32 bit_width, u64 *value)
{
 acpi_status status;
 acpi_adr_space_handler handler;
 acpi_adr_space_setup region_setup;
 union acpi_operand_object *handler_desc;
 union acpi_operand_object *region_obj2;
 void *region_context = ((void*)0);
 struct acpi_connection_info *context;
 acpi_physical_address address;

 ACPI_FUNCTION_TRACE(ev_address_space_dispatch);

 region_obj2 = acpi_ns_get_secondary_object(region_obj);
 if (!region_obj2) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }



 handler_desc = region_obj->region.handler;
 if (!handler_desc) {
  ACPI_ERROR((AE_INFO,
       "No handler for Region [%4.4s] (%p) [%s]",
       acpi_ut_get_node_name(region_obj->region.node),
       region_obj,
       acpi_ut_get_region_name(region_obj->region.
          space_id)));

  return_ACPI_STATUS(AE_NOT_EXIST);
 }

 context = handler_desc->address_space.context;





 if (!(region_obj->region.flags & AOPOBJ_SETUP_COMPLETE)) {



  region_setup = handler_desc->address_space.setup;
  if (!region_setup) {



   ACPI_ERROR((AE_INFO,
        "No init routine for region(%p) [%s]",
        region_obj,
        acpi_ut_get_region_name(region_obj->region.
           space_id)));
   return_ACPI_STATUS(AE_NOT_EXIST);
  }






  acpi_ex_exit_interpreter();

  status = region_setup(region_obj, ACPI_REGION_ACTIVATE,
          context, &region_context);



  acpi_ex_enter_interpreter();



  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, status,
     "During region initialization: [%s]",
     acpi_ut_get_region_name(region_obj->
        region.
        space_id)));
   return_ACPI_STATUS(status);
  }



  if (!(region_obj->region.flags & AOPOBJ_SETUP_COMPLETE)) {
   region_obj->region.flags |= AOPOBJ_SETUP_COMPLETE;





   if (!(region_obj2->extra.region_context)) {
    region_obj2->extra.region_context =
        region_context;
   }
  }
 }



 handler = handler_desc->address_space.handler;
 address = (region_obj->region.address + region_offset);
 if ((region_obj->region.space_id == ACPI_ADR_SPACE_GSBUS) &&
     context && field_obj) {



  context->connection = field_obj->field.resource_buffer;
  context->length = field_obj->field.resource_length;
  context->access_length = field_obj->field.access_length;
 }
 if ((region_obj->region.space_id == ACPI_ADR_SPACE_GPIO) &&
     context && field_obj) {



  context->connection = field_obj->field.resource_buffer;
  context->length = field_obj->field.resource_length;
  context->access_length = field_obj->field.access_length;
  address = field_obj->field.pin_number_index;
  bit_width = field_obj->field.bit_length;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "Handler %p (@%p) Address %8.8X%8.8X [%s]\n",
     &region_obj->region.handler->address_space, handler,
     ACPI_FORMAT_UINT64(address),
     acpi_ut_get_region_name(region_obj->region.
        space_id)));

 if (!(handler_desc->address_space.handler_flags &
       ACPI_ADDR_HANDLER_DEFAULT_INSTALLED)) {





  acpi_ex_exit_interpreter();
 }



 status = handler(function, address, bit_width, value, context,
    region_obj2->extra.region_context);

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Returned by Handler for [%s]",
    acpi_ut_get_region_name(region_obj->region.
       space_id)));





  if ((region_obj->region.space_id == ACPI_ADR_SPACE_EC) &&
      (status == AE_TIME)) {
   ACPI_ERROR((AE_INFO,
        "Timeout from EC hardware or EC device driver"));
  }
 }

 if (!(handler_desc->address_space.handler_flags &
       ACPI_ADDR_HANDLER_DEFAULT_INSTALLED)) {




  acpi_ex_enter_interpreter();
 }

 return_ACPI_STATUS(status);
}
