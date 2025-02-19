
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct acpi_evaluate_info {size_t param_count; TYPE_5__* node; int full_pathname; TYPE_4__** parameters; TYPE_2__* predefined; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_8__ {size_t type; } ;
struct TYPE_9__ {TYPE_3__ common; } ;
struct TYPE_6__ {int argument_list; } ;
struct TYPE_7__ {TYPE_1__ info; } ;


 int ACPI_WARN_ALWAYS ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int ANOBJ_EVALUATED ;
 size_t METHOD_GET_ARG_COUNT (int ) ;
 size_t METHOD_GET_NEXT_TYPE (int ) ;
 int acpi_ut_get_type_name (size_t) ;

void acpi_ns_check_argument_types(struct acpi_evaluate_info *info)
{
 u16 arg_type_list;
 u8 arg_count;
 u8 arg_type;
 u8 user_arg_type;
 u32 i;
 if (!info->predefined || (info->node->flags & ANOBJ_EVALUATED)) {
  return;
 }

 arg_type_list = info->predefined->info.argument_list;
 arg_count = METHOD_GET_ARG_COUNT(arg_type_list);



 for (i = 0; ((i < arg_count) && (i < info->param_count)); i++) {
  arg_type = METHOD_GET_NEXT_TYPE(arg_type_list);
  user_arg_type = info->parameters[i]->common.type;

  if (user_arg_type != arg_type) {
   ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
           ACPI_WARN_ALWAYS,
           "Argument #%u type mismatch - "
           "Found [%s], ACPI requires [%s]",
           (i + 1),
           acpi_ut_get_type_name
           (user_arg_type),
           acpi_ut_get_type_name(arg_type)));



   info->node->flags |= ANOBJ_EVALUATED;
  }
 }
}
