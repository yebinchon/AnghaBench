
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ecma_string_t ;
typedef int ecma_standard_error_t ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ ecma_property_value_t ;
typedef int ecma_object_t ;


 int ECMA_PROPERTY_CONFIGURABLE_WRITABLE ;
 int LIT_MAGIC_STRING_MESSAGE ;
 TYPE_1__* ecma_create_named_data_property (int *,int ,int ,int *) ;
 int ecma_get_magic_string (int ) ;
 int ecma_make_string_value (int *) ;
 int * ecma_new_standard_error (int ) ;
 int ecma_ref_ecma_string (int *) ;

ecma_object_t *
ecma_new_standard_error_with_message (ecma_standard_error_t error_type,
                                      ecma_string_t *message_string_p)
{
  ecma_object_t *new_error_obj_p = ecma_new_standard_error (error_type);

  ecma_property_value_t *prop_value_p;
  prop_value_p = ecma_create_named_data_property (new_error_obj_p,
                                                  ecma_get_magic_string (LIT_MAGIC_STRING_MESSAGE),
                                                  ECMA_PROPERTY_CONFIGURABLE_WRITABLE,
                                                  ((void*)0));

  ecma_ref_ecma_string (message_string_p);
  prop_value_p->value = ecma_make_string_value (message_string_p);

  return new_error_obj_p;
}
