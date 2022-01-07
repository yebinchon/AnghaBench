
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int type; int flags; } ;
struct TYPE_15__ {int os_mutex; void* sync_level; struct acpi_namespace_node* node; } ;
struct TYPE_14__ {int * pointer; int length; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_11__ {int implementation; } ;
struct TYPE_12__ {TYPE_2__ dispatch; int info_flags; void* param_count; } ;
union acpi_operand_object {TYPE_7__ common; TYPE_6__ mutex; TYPE_5__ string; TYPE_4__ integer; TYPE_3__ method; } ;
typedef void* u8 ;
typedef int u32 ;
struct acpi_predefined_names {int type; scalar_t__ name; int * val; } ;
struct TYPE_10__ {int ascii; } ;
struct acpi_namespace_node {int type; void* value; TYPE_8__* parent; struct acpi_namespace_node* peer; int descriptor_type; TYPE_1__ name; } ;
typedef int * acpi_string ;
typedef int acpi_status ;
struct TYPE_17__ {struct acpi_namespace_node* child; } ;


 struct acpi_namespace_node* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_COPY_NAMESEG (int ,scalar_t__) ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_METHOD_INTERNAL_ONLY ;
 int ACPI_MTX_NAMESPACE ;
 int ACPI_NS_NO_UPSEARCH ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TO_INTEGER (int *) ;




 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AOPOBJ_STATIC_POINTER ;
 int acpi_gbl_create_osi_method ;
 int acpi_gbl_fadt_gpe_device ;
 union acpi_operand_object* acpi_gbl_global_lock_mutex ;
 int acpi_gbl_global_lock_semaphore ;
 struct acpi_predefined_names* acpi_gbl_pre_defined_names ;
 TYPE_8__* acpi_gbl_root_node ;
 TYPE_8__ acpi_gbl_root_node_struct ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 int acpi_ns_get_node (int *,char*,int ,int *) ;
 int acpi_os_create_mutex (int *) ;
 int acpi_os_create_semaphore (int,int ,int *) ;
 int acpi_os_predefined_override (struct acpi_predefined_names const*,int **) ;
 int acpi_ut_acquire_mutex (int ) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int) ;
 int acpi_ut_osi_implementation ;
 int acpi_ut_release_mutex (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ns_root_initialize ;
 int return_ACPI_STATUS (int ) ;
 int strcmp (scalar_t__,char*) ;
 int strlen (int *) ;

acpi_status acpi_ns_root_initialize(void)
{
 acpi_status status;
 const struct acpi_predefined_names *init_val = ((void*)0);
 struct acpi_namespace_node *new_node;
 struct acpi_namespace_node *prev_node = ((void*)0);
 union acpi_operand_object *obj_desc;
 acpi_string val = ((void*)0);

 ACPI_FUNCTION_TRACE(ns_root_initialize);

 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }





 if (acpi_gbl_root_node) {
  status = AE_OK;
  goto unlock_and_exit;
 }





 acpi_gbl_root_node = &acpi_gbl_root_node_struct;



 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Entering predefined entries into namespace\n"));
 for (init_val = acpi_gbl_pre_defined_names; init_val->name; init_val++) {
  status = AE_OK;



  if (!strcmp(init_val->name, "_OSI")
      && !acpi_gbl_create_osi_method) {
   continue;
  }







  new_node =
      ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_namespace_node));
  if (!new_node) {
   status = AE_NO_MEMORY;
   goto unlock_and_exit;
  }

  ACPI_COPY_NAMESEG(new_node->name.ascii, init_val->name);
  new_node->descriptor_type = ACPI_DESC_TYPE_NAMED;
  new_node->type = init_val->type;

  if (!prev_node) {
   acpi_gbl_root_node_struct.child = new_node;
  } else {
   prev_node->peer = new_node;
  }

  new_node->parent = &acpi_gbl_root_node_struct;
  prev_node = new_node;





  if (init_val->val) {
   status = acpi_os_predefined_override(init_val, &val);
   if (ACPI_FAILURE(status)) {
    ACPI_ERROR((AE_INFO,
         "Could not override predefined %s",
         init_val->name));
   }

   if (!val) {
    val = init_val->val;
   }





   obj_desc =
       acpi_ut_create_internal_object(init_val->type);
   if (!obj_desc) {
    status = AE_NO_MEMORY;
    goto unlock_and_exit;
   }






   switch (init_val->type) {
   case 130:

    obj_desc->method.param_count =
        (u8) ACPI_TO_INTEGER(val);
    obj_desc->common.flags |= AOPOBJ_DATA_VALID;
    obj_desc->method.info_flags =
        ACPI_METHOD_INTERNAL_ONLY;
    obj_desc->method.dispatch.implementation =
        acpi_ut_osi_implementation;

    break;

   case 131:

    obj_desc->integer.value = ACPI_TO_INTEGER(val);
    break;

   case 128:



    obj_desc->string.length = (u32)strlen(val);
    obj_desc->string.pointer = val;
    obj_desc->common.flags |= AOPOBJ_STATIC_POINTER;
    break;

   case 129:

    obj_desc->mutex.node = new_node;
    obj_desc->mutex.sync_level =
        (u8) (ACPI_TO_INTEGER(val) - 1);



    status =
        acpi_os_create_mutex(&obj_desc->mutex.
        os_mutex);
    if (ACPI_FAILURE(status)) {
     acpi_ut_remove_reference(obj_desc);
     goto unlock_and_exit;
    }



    if (strcmp(init_val->name, "_GL_") == 0) {
     acpi_gbl_global_lock_mutex = obj_desc;



     status =
         acpi_os_create_semaphore(1, 0,
             &acpi_gbl_global_lock_semaphore);
     if (ACPI_FAILURE(status)) {
      acpi_ut_remove_reference
          (obj_desc);
      goto unlock_and_exit;
     }
    }
    break;

   default:

    ACPI_ERROR((AE_INFO,
         "Unsupported initial type value 0x%X",
         init_val->type));
    acpi_ut_remove_reference(obj_desc);
    obj_desc = ((void*)0);
    continue;
   }



   status = acpi_ns_attach_object(new_node, obj_desc,
             obj_desc->common.type);



   acpi_ut_remove_reference(obj_desc);
  }
 }

unlock_and_exit:
 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);



 if (ACPI_SUCCESS(status)) {
  status = acpi_ns_get_node(((void*)0), "\\_GPE", ACPI_NS_NO_UPSEARCH,
       &acpi_gbl_fadt_gpe_device);
 }

 return_ACPI_STATUS(status);
}
