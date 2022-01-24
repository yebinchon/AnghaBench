#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
struct TYPE_23__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_6__ ecma_property_value_t ;
struct TYPE_24__ {int flags; int /*<<< orphan*/ * get_p; int /*<<< orphan*/ * set_p; } ;
typedef  TYPE_7__ ecma_property_descriptor_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
typedef  scalar_t__ ecma_length_t ;
struct TYPE_21__ {int /*<<< orphan*/  class_id; } ;
struct TYPE_19__ {scalar_t__ length; } ;
struct TYPE_18__ {int /*<<< orphan*/  lex_env_cp; } ;
struct TYPE_20__ {TYPE_2__ u1; TYPE_1__ u2; int /*<<< orphan*/  type; } ;
struct TYPE_22__ {TYPE_4__ class_prop; TYPE_3__ pseudo_array; } ;
struct TYPE_25__ {TYPE_5__ u; } ;
typedef  TYPE_8__ ecma_extended_object_t ;
struct TYPE_26__ {int status_flags; scalar_t__ size; } ;
typedef  TYPE_9__ ecma_compiled_code_t ;
struct TYPE_16__ {scalar_t__ argument_end; } ;
typedef  TYPE_10__ cbc_uint8_arguments_t ;
struct TYPE_17__ {scalar_t__ argument_end; } ;
typedef  TYPE_11__ cbc_uint16_arguments_t ;

/* Variables and functions */
 int CBC_CODE_FLAGS_MAPPED_ARGUMENTS_NEEDED ; 
 int CBC_CODE_FLAGS_STRICT_MODE ; 
 int CBC_CODE_FLAGS_UINT16_ARGUMENTS ; 
 int /*<<< orphan*/  ECMA_BUILTIN_ID_OBJECT_PROTOTYPE ; 
 int /*<<< orphan*/  ECMA_BUILTIN_ID_TYPE_ERROR_THROWER ; 
 int /*<<< orphan*/  ECMA_OBJECT_TYPE_CLASS ; 
 int /*<<< orphan*/  ECMA_OBJECT_TYPE_PSEUDO_ARRAY ; 
 int /*<<< orphan*/  ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE ; 
 int /*<<< orphan*/  ECMA_PROPERTY_CONFIGURABLE_WRITABLE ; 
 int ECMA_PROP_IS_CONFIGURABLE_DEFINED ; 
 int ECMA_PROP_IS_ENUMERABLE_DEFINED ; 
 int ECMA_PROP_IS_GET_DEFINED ; 
 int ECMA_PROP_IS_SET_DEFINED ; 
 int /*<<< orphan*/  ECMA_PSEUDO_ARRAY_ARGUMENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t JMEM_ALIGNMENT_LOG ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_ARGUMENTS ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_ARGUMENTS_UL ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_CALLEE ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_CALLER ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_LENGTH ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 TYPE_7__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_7__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,int /*<<< orphan*/ *,size_t) ; 

void
FUNC22 (ecma_object_t *func_obj_p, /**< callee function */
                                 ecma_object_t *lex_env_p, /**< lexical environment the Arguments
                                                                object is created for */
                                 const ecma_value_t *arguments_list_p, /**< arguments list */
                                 ecma_length_t arguments_number, /**< length of arguments list */
                                 const ecma_compiled_code_t *bytecode_data_p) /**< byte code */
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

  ecma_object_t *prototype_p = FUNC2 (ECMA_BUILTIN_ID_OBJECT_PROTOTYPE);

  ecma_object_t *obj_p;

  if ((bytecode_data_p->status_flags & CBC_CODE_FLAGS_MAPPED_ARGUMENTS_NEEDED)
      && arguments_number > 0
      && formal_params_number > 0)
  {
    size_t formal_params_size = formal_params_number * sizeof (ecma_value_t);

    obj_p = FUNC5 (prototype_p,
                                sizeof (ecma_extended_object_t) + formal_params_size,
                                ECMA_OBJECT_TYPE_PSEUDO_ARRAY);

    ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) obj_p;

    ext_object_p->u.pseudo_array.type = ECMA_PSEUDO_ARRAY_ARGUMENTS;

    FUNC0 (ext_object_p->u.pseudo_array.u2.lex_env_cp, lex_env_p);

    ext_object_p->u.pseudo_array.u1.length = (uint16_t) formal_params_number;

    ecma_value_t *arg_Literal_p = (ecma_value_t *) (ext_object_p + 1);

    uint8_t *byte_p = (uint8_t *) bytecode_data_p;
    byte_p += ((size_t) bytecode_data_p->size) << JMEM_ALIGNMENT_LOG;
    byte_p -= formal_params_size;

    FUNC21 (arg_Literal_p, byte_p, formal_params_size);

    for (ecma_length_t i = 0; i < formal_params_number; i++)
    {
      if (arg_Literal_p[i] != ECMA_VALUE_EMPTY)
      {
        ecma_string_t *name_p = FUNC9 (arg_Literal_p[i]);
        FUNC20 (name_p);
      }
    }
  }
  else
  {
    obj_p = FUNC5 (prototype_p, sizeof (ecma_extended_object_t), ECMA_OBJECT_TYPE_CLASS);

    ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) obj_p;
    ext_object_p->u.class_prop.class_id = LIT_MAGIC_STRING_ARGUMENTS_UL;
  }

  ecma_property_value_t *prop_value_p;

  /* 11.a, 11.b */
  for (ecma_length_t index = 0;
       index < arguments_number;
       index++)
  {
    ecma_string_t *index_string_p = FUNC15 (index);

    prop_value_p = FUNC4 (obj_p,
                                                    index_string_p,
                                                    ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE,
                                                    NULL);

    prop_value_p->value = FUNC3 (arguments_list_p[index]);

    FUNC6 (index_string_p);
  }

  /* 7. */
  prop_value_p = FUNC4 (obj_p,
                                                  FUNC8 (LIT_MAGIC_STRING_LENGTH),
                                                  ECMA_PROPERTY_CONFIGURABLE_WRITABLE,
                                                  NULL);

  prop_value_p->value = FUNC14 (arguments_number);

  ecma_property_descriptor_t prop_desc = FUNC12 ();

  /* 13. */
  if (!is_strict)
  {
    prop_value_p = FUNC4 (obj_p,
                                                    FUNC8 (LIT_MAGIC_STRING_CALLEE),
                                                    ECMA_PROPERTY_CONFIGURABLE_WRITABLE,
                                                    NULL);

    prop_value_p->value = FUNC13 (func_obj_p);
  }
  else
  {
    ecma_object_t *thrower_p = FUNC2 (ECMA_BUILTIN_ID_TYPE_ERROR_THROWER);

    /* 14. */
    prop_desc = FUNC12 ();
    {
      prop_desc.flags = (ECMA_PROP_IS_GET_DEFINED
                         | ECMA_PROP_IS_SET_DEFINED
                         | ECMA_PROP_IS_ENUMERABLE_DEFINED
                         | ECMA_PROP_IS_CONFIGURABLE_DEFINED);
    }
    prop_desc.set_p = thrower_p;
    prop_desc.get_p = thrower_p;

    ecma_value_t completion = FUNC18 (obj_p,
                                                                  FUNC8 (LIT_MAGIC_STRING_CALLEE),
                                                                  &prop_desc);

    FUNC1 (FUNC11 (completion));

    completion = FUNC18 (obj_p,
                                                     FUNC8 (LIT_MAGIC_STRING_CALLER),
                                                     &prop_desc);
    FUNC1 (FUNC11 (completion));
  }

  ecma_string_t *arguments_string_p = FUNC8 (LIT_MAGIC_STRING_ARGUMENTS);

  if (is_strict)
  {
    FUNC16 (lex_env_p,
                                      arguments_string_p,
                                      FUNC13 (obj_p));
  }
  else
  {
    ecma_value_t completion = FUNC17 (lex_env_p,
                                                              arguments_string_p,
                                                              false);
    FUNC1 (FUNC10 (completion));

    completion = FUNC19 (lex_env_p,
                                              arguments_string_p,
                                              FUNC13 (obj_p),
                                              false);

    FUNC1 (FUNC10 (completion));
  }

  FUNC7 (obj_p);
}