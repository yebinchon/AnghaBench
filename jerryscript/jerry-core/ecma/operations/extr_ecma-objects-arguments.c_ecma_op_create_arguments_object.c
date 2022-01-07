
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ ecma_value_t ;
typedef int ecma_string_t ;
struct TYPE_23__ {int value; } ;
typedef TYPE_6__ ecma_property_value_t ;
struct TYPE_24__ {int flags; int * get_p; int * set_p; } ;
typedef TYPE_7__ ecma_property_descriptor_t ;
typedef int ecma_object_t ;
typedef scalar_t__ ecma_length_t ;
struct TYPE_21__ {int class_id; } ;
struct TYPE_19__ {scalar_t__ length; } ;
struct TYPE_18__ {int lex_env_cp; } ;
struct TYPE_20__ {TYPE_2__ u1; TYPE_1__ u2; int type; } ;
struct TYPE_22__ {TYPE_4__ class_prop; TYPE_3__ pseudo_array; } ;
struct TYPE_25__ {TYPE_5__ u; } ;
typedef TYPE_8__ ecma_extended_object_t ;
struct TYPE_26__ {int status_flags; scalar_t__ size; } ;
typedef TYPE_9__ ecma_compiled_code_t ;
struct TYPE_16__ {scalar_t__ argument_end; } ;
typedef TYPE_10__ cbc_uint8_arguments_t ;
struct TYPE_17__ {scalar_t__ argument_end; } ;
typedef TYPE_11__ cbc_uint16_arguments_t ;


 int CBC_CODE_FLAGS_MAPPED_ARGUMENTS_NEEDED ;
 int CBC_CODE_FLAGS_STRICT_MODE ;
 int CBC_CODE_FLAGS_UINT16_ARGUMENTS ;
 int ECMA_BUILTIN_ID_OBJECT_PROTOTYPE ;
 int ECMA_BUILTIN_ID_TYPE_ERROR_THROWER ;
 int ECMA_OBJECT_TYPE_CLASS ;
 int ECMA_OBJECT_TYPE_PSEUDO_ARRAY ;
 int ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE ;
 int ECMA_PROPERTY_CONFIGURABLE_WRITABLE ;
 int ECMA_PROP_IS_CONFIGURABLE_DEFINED ;
 int ECMA_PROP_IS_ENUMERABLE_DEFINED ;
 int ECMA_PROP_IS_GET_DEFINED ;
 int ECMA_PROP_IS_SET_DEFINED ;
 int ECMA_PSEUDO_ARRAY_ARGUMENTS ;
 int ECMA_SET_INTERNAL_VALUE_POINTER (int ,int *) ;
 scalar_t__ ECMA_VALUE_EMPTY ;
 int JERRY_ASSERT (int ) ;
 size_t JMEM_ALIGNMENT_LOG ;
 int LIT_MAGIC_STRING_ARGUMENTS ;
 int LIT_MAGIC_STRING_ARGUMENTS_UL ;
 int LIT_MAGIC_STRING_CALLEE ;
 int LIT_MAGIC_STRING_CALLER ;
 int LIT_MAGIC_STRING_LENGTH ;
 int * ecma_builtin_get (int ) ;
 int ecma_copy_value_if_not_object (scalar_t__ const) ;
 TYPE_6__* ecma_create_named_data_property (int *,int *,int ,int *) ;
 int * ecma_create_object (int *,int,int ) ;
 int ecma_deref_ecma_string (int *) ;
 int ecma_deref_object (int *) ;
 int * ecma_get_magic_string (int ) ;
 int * ecma_get_string_from_value (scalar_t__) ;
 int ecma_is_value_empty (scalar_t__) ;
 int ecma_is_value_true (scalar_t__) ;
 TYPE_7__ ecma_make_empty_property_descriptor () ;
 int ecma_make_object_value (int *) ;
 int ecma_make_uint32_value (scalar_t__) ;
 int * ecma_new_ecma_string_from_uint32 (scalar_t__) ;
 int ecma_op_create_immutable_binding (int *,int *,int ) ;
 scalar_t__ ecma_op_create_mutable_binding (int *,int *,int) ;
 scalar_t__ ecma_op_object_define_own_property (int *,int *,TYPE_7__*) ;
 scalar_t__ ecma_op_set_mutable_binding (int *,int *,int ,int) ;
 int ecma_ref_ecma_string (int *) ;
 int memcpy (scalar_t__*,int *,size_t) ;

void
ecma_op_create_arguments_object (ecma_object_t *func_obj_p,
                                 ecma_object_t *lex_env_p,

                                 const ecma_value_t *arguments_list_p,
                                 ecma_length_t arguments_number,
                                 const ecma_compiled_code_t *bytecode_data_p)
{
  bool is_strict = (bytecode_data_p->status_flags & CBC_CODE_FLAGS_STRICT_MODE) != 0;

  ecma_length_t formal_params_number;

  if (bytecode_data_p->status_flags & CBC_CODE_FLAGS_UINT16_ARGUMENTS)
  {
    cbc_uint16_arguments_t *args_p = (cbc_uint16_arguments_t *) bytecode_data_p;

    formal_params_number = args_p->argument_end;
  }
  else
  {
    cbc_uint8_arguments_t *args_p = (cbc_uint8_arguments_t *) bytecode_data_p;

    formal_params_number = args_p->argument_end;
  }

  ecma_object_t *prototype_p = ecma_builtin_get (ECMA_BUILTIN_ID_OBJECT_PROTOTYPE);

  ecma_object_t *obj_p;

  if ((bytecode_data_p->status_flags & CBC_CODE_FLAGS_MAPPED_ARGUMENTS_NEEDED)
      && arguments_number > 0
      && formal_params_number > 0)
  {
    size_t formal_params_size = formal_params_number * sizeof (ecma_value_t);

    obj_p = ecma_create_object (prototype_p,
                                sizeof (ecma_extended_object_t) + formal_params_size,
                                ECMA_OBJECT_TYPE_PSEUDO_ARRAY);

    ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) obj_p;

    ext_object_p->u.pseudo_array.type = ECMA_PSEUDO_ARRAY_ARGUMENTS;

    ECMA_SET_INTERNAL_VALUE_POINTER (ext_object_p->u.pseudo_array.u2.lex_env_cp, lex_env_p);

    ext_object_p->u.pseudo_array.u1.length = (uint16_t) formal_params_number;

    ecma_value_t *arg_Literal_p = (ecma_value_t *) (ext_object_p + 1);

    uint8_t *byte_p = (uint8_t *) bytecode_data_p;
    byte_p += ((size_t) bytecode_data_p->size) << JMEM_ALIGNMENT_LOG;
    byte_p -= formal_params_size;

    memcpy (arg_Literal_p, byte_p, formal_params_size);

    for (ecma_length_t i = 0; i < formal_params_number; i++)
    {
      if (arg_Literal_p[i] != ECMA_VALUE_EMPTY)
      {
        ecma_string_t *name_p = ecma_get_string_from_value (arg_Literal_p[i]);
        ecma_ref_ecma_string (name_p);
      }
    }
  }
  else
  {
    obj_p = ecma_create_object (prototype_p, sizeof (ecma_extended_object_t), ECMA_OBJECT_TYPE_CLASS);

    ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) obj_p;
    ext_object_p->u.class_prop.class_id = LIT_MAGIC_STRING_ARGUMENTS_UL;
  }

  ecma_property_value_t *prop_value_p;


  for (ecma_length_t index = 0;
       index < arguments_number;
       index++)
  {
    ecma_string_t *index_string_p = ecma_new_ecma_string_from_uint32 (index);

    prop_value_p = ecma_create_named_data_property (obj_p,
                                                    index_string_p,
                                                    ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE,
                                                    ((void*)0));

    prop_value_p->value = ecma_copy_value_if_not_object (arguments_list_p[index]);

    ecma_deref_ecma_string (index_string_p);
  }


  prop_value_p = ecma_create_named_data_property (obj_p,
                                                  ecma_get_magic_string (LIT_MAGIC_STRING_LENGTH),
                                                  ECMA_PROPERTY_CONFIGURABLE_WRITABLE,
                                                  ((void*)0));

  prop_value_p->value = ecma_make_uint32_value (arguments_number);

  ecma_property_descriptor_t prop_desc = ecma_make_empty_property_descriptor ();


  if (!is_strict)
  {
    prop_value_p = ecma_create_named_data_property (obj_p,
                                                    ecma_get_magic_string (LIT_MAGIC_STRING_CALLEE),
                                                    ECMA_PROPERTY_CONFIGURABLE_WRITABLE,
                                                    ((void*)0));

    prop_value_p->value = ecma_make_object_value (func_obj_p);
  }
  else
  {
    ecma_object_t *thrower_p = ecma_builtin_get (ECMA_BUILTIN_ID_TYPE_ERROR_THROWER);


    prop_desc = ecma_make_empty_property_descriptor ();
    {
      prop_desc.flags = (ECMA_PROP_IS_GET_DEFINED
                         | ECMA_PROP_IS_SET_DEFINED
                         | ECMA_PROP_IS_ENUMERABLE_DEFINED
                         | ECMA_PROP_IS_CONFIGURABLE_DEFINED);
    }
    prop_desc.set_p = thrower_p;
    prop_desc.get_p = thrower_p;

    ecma_value_t completion = ecma_op_object_define_own_property (obj_p,
                                                                  ecma_get_magic_string (LIT_MAGIC_STRING_CALLEE),
                                                                  &prop_desc);

    JERRY_ASSERT (ecma_is_value_true (completion));

    completion = ecma_op_object_define_own_property (obj_p,
                                                     ecma_get_magic_string (LIT_MAGIC_STRING_CALLER),
                                                     &prop_desc);
    JERRY_ASSERT (ecma_is_value_true (completion));
  }

  ecma_string_t *arguments_string_p = ecma_get_magic_string (LIT_MAGIC_STRING_ARGUMENTS);

  if (is_strict)
  {
    ecma_op_create_immutable_binding (lex_env_p,
                                      arguments_string_p,
                                      ecma_make_object_value (obj_p));
  }
  else
  {
    ecma_value_t completion = ecma_op_create_mutable_binding (lex_env_p,
                                                              arguments_string_p,
                                                              0);
    JERRY_ASSERT (ecma_is_value_empty (completion));

    completion = ecma_op_set_mutable_binding (lex_env_p,
                                              arguments_string_p,
                                              ecma_make_object_value (obj_p),
                                              0);

    JERRY_ASSERT (ecma_is_value_empty (completion));
  }

  ecma_deref_object (obj_p);
}
