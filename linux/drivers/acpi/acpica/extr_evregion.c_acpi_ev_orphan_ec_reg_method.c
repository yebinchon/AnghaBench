
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ value; } ;
union acpi_object {TYPE_3__ integer; void* type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_namespace_node {scalar_t__ type; TYPE_2__* object; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_4__ {scalar_t__ space_id; } ;
struct TYPE_5__ {TYPE_1__ region; } ;


 scalar_t__ ACPI_ADR_SPACE_EC ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 scalar_t__ ACPI_REG_CONNECT ;
 void* ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_REGION ;
 int METHOD_NAME__REG ;
 int acpi_evaluate_object (int ,int *,struct acpi_object_list*,int *) ;
 int acpi_get_handle (struct acpi_namespace_node*,int ,int *) ;
 struct acpi_namespace_node* acpi_ns_get_next_node (struct acpi_namespace_node*,struct acpi_namespace_node*) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ev_orphan_ec_reg_method ;
 int return_VOID ;

__attribute__((used)) static void
acpi_ev_orphan_ec_reg_method(struct acpi_namespace_node *ec_device_node)
{
 acpi_handle reg_method;
 struct acpi_namespace_node *next_node;
 acpi_status status;
 struct acpi_object_list args;
 union acpi_object objects[2];

 ACPI_FUNCTION_TRACE(ev_orphan_ec_reg_method);

 if (!ec_device_node) {
  return_VOID;
 }



 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);



 status = acpi_get_handle(ec_device_node, METHOD_NAME__REG, &reg_method);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }
 next_node = acpi_ns_get_next_node(ec_device_node, ((void*)0));
 while (next_node) {
  if ((next_node->type == ACPI_TYPE_REGION) &&
      (next_node->object) &&
      (next_node->object->region.space_id == ACPI_ADR_SPACE_EC)) {
   goto exit;
  }

  next_node = acpi_ns_get_next_node(ec_device_node, next_node);
 }



 args.count = 2;
 args.pointer = objects;
 objects[0].type = ACPI_TYPE_INTEGER;
 objects[0].integer.value = ACPI_ADR_SPACE_EC;
 objects[1].type = ACPI_TYPE_INTEGER;
 objects[1].integer.value = ACPI_REG_CONNECT;

 status = acpi_evaluate_object(reg_method, ((void*)0), &args, ((void*)0));

exit:


 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 return_VOID;
}
