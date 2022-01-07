
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; union acpi_operand_object* next; union acpi_operand_object* handler; int space_id; } ;
struct TYPE_5__ {int context; int (* setup ) (union acpi_operand_object*,int ,int ,void**) ;union acpi_operand_object* region_list; } ;
struct TYPE_4__ {void* region_context; } ;
union acpi_operand_object {TYPE_3__ region; TYPE_2__ address_space; TYPE_1__ extra; } ;
typedef scalar_t__ u8 ;
typedef int acpi_status ;
typedef int (* acpi_adr_space_setup ) (union acpi_operand_object*,int ,int ,void**) ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 int ACPI_REGION_DEACTIVATE ;
 int ACPI_REG_DISCONNECT ;
 int AE_INFO ;
 int AOPOBJ_SETUP_COMPLETE ;
 int acpi_ev_execute_reg_method (union acpi_operand_object*,int ) ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_get_region_name (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ev_detach_region ;
 int return_VOID ;

void
acpi_ev_detach_region(union acpi_operand_object *region_obj,
        u8 acpi_ns_is_locked)
{
 union acpi_operand_object *handler_obj;
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *start_desc;
 union acpi_operand_object **last_obj_ptr;
 acpi_adr_space_setup region_setup;
 void **region_context;
 union acpi_operand_object *region_obj2;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_detach_region);

 region_obj2 = acpi_ns_get_secondary_object(region_obj);
 if (!region_obj2) {
  return_VOID;
 }
 region_context = &region_obj2->extra.region_context;



 handler_obj = region_obj->region.handler;
 if (!handler_obj) {



  return_VOID;
 }



 obj_desc = handler_obj->address_space.region_list;
 start_desc = obj_desc;
 last_obj_ptr = &handler_obj->address_space.region_list;

 while (obj_desc) {



  if (obj_desc == region_obj) {
   ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
       "Removing Region %p from address handler %p\n",
       region_obj, handler_obj));



   *last_obj_ptr = obj_desc->region.next;
   obj_desc->region.next = ((void*)0);

   if (acpi_ns_is_locked) {
    status =
        acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
    if (ACPI_FAILURE(status)) {
     return_VOID;
    }
   }



   status =
       acpi_ev_execute_reg_method(region_obj,
             ACPI_REG_DISCONNECT);
   if (ACPI_FAILURE(status)) {
    ACPI_EXCEPTION((AE_INFO, status,
      "from region _REG, [%s]",
      acpi_ut_get_region_name
      (region_obj->region.space_id)));
   }

   if (acpi_ns_is_locked) {
    status =
        acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
    if (ACPI_FAILURE(status)) {
     return_VOID;
    }
   }





   if (region_obj->region.flags & AOPOBJ_SETUP_COMPLETE) {
    region_setup = handler_obj->address_space.setup;
    status =
        region_setup(region_obj,
       ACPI_REGION_DEACTIVATE,
       handler_obj->address_space.
       context, region_context);





    if (region_context) {
     *region_context = ((void*)0);
    }



    if (ACPI_FAILURE(status)) {
     ACPI_EXCEPTION((AE_INFO, status,
       "from region handler - deactivate, [%s]",
       acpi_ut_get_region_name
       (region_obj->region.
        space_id)));
    }

    region_obj->region.flags &=
        ~(AOPOBJ_SETUP_COMPLETE);
   }
   region_obj->region.handler = ((void*)0);
   acpi_ut_remove_reference(handler_obj);

   return_VOID;
  }



  last_obj_ptr = &obj_desc->region.next;
  obj_desc = obj_desc->region.next;



  if (obj_desc == start_desc) {
   ACPI_ERROR((AE_INFO,
        "Circular handler list in region object %p",
        region_obj));
   return_VOID;
  }
 }



 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "Cannot remove region %p from address handler %p\n",
     region_obj, handler_obj));

 return_VOID;
}
