
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int ecma_value_t ;
struct TYPE_5__ {int flags; int * set_p; int * get_p; int value; } ;
typedef TYPE_1__ ecma_property_descriptor_t ;
typedef int ecma_object_t ;


 int ECMA_ERR_MSG (char*) ;
 int ECMA_FINALIZE (int ) ;
 int ECMA_IS_VALUE_ERROR (int ) ;
 int ECMA_PROP_IS_CONFIGURABLE ;
 int ECMA_PROP_IS_CONFIGURABLE_DEFINED ;
 int ECMA_PROP_IS_ENUMERABLE ;
 int ECMA_PROP_IS_ENUMERABLE_DEFINED ;
 int ECMA_PROP_IS_GET_DEFINED ;
 int ECMA_PROP_IS_SET_DEFINED ;
 int ECMA_PROP_IS_VALUE_DEFINED ;
 int ECMA_PROP_IS_WRITABLE ;
 int ECMA_PROP_IS_WRITABLE_DEFINED ;
 int ECMA_PROP_NO_OPTS ;
 int ECMA_TRY_CATCH (int ,int ,int ) ;
 int ECMA_VALUE_EMPTY ;
 int JERRY_ASSERT (int ) ;
 int LIT_MAGIC_STRING_CONFIGURABLE ;
 int LIT_MAGIC_STRING_ENUMERABLE ;
 int LIT_MAGIC_STRING_GET ;
 int LIT_MAGIC_STRING_SET ;
 int LIT_MAGIC_STRING_VALUE ;
 int LIT_MAGIC_STRING_WRITABLE ;
 int configurable_prop_value ;
 int ecma_copy_value (int ) ;
 int ecma_free_property_descriptor (TYPE_1__*) ;
 int ecma_get_magic_string (int ) ;
 int * ecma_get_object_from_value (int ) ;
 int ecma_is_value_empty (int ) ;
 scalar_t__ ecma_is_value_found (int ) ;
 int ecma_is_value_object (int ) ;
 scalar_t__ ecma_is_value_undefined (int ) ;
 TYPE_1__ ecma_make_empty_property_descriptor () ;
 int ecma_op_is_callable (int ) ;
 int ecma_op_object_find (int *,int ) ;
 scalar_t__ ecma_op_to_boolean (int ) ;
 int ecma_raise_type_error (int ) ;
 int ecma_ref_object (int *) ;
 int enumerable_prop_value ;
 int get_prop_value ;
 int set_prop_value ;
 int value_prop_value ;
 int writable_prop_value ;

ecma_value_t
ecma_op_to_property_descriptor (ecma_value_t obj_value,
                                ecma_property_descriptor_t *out_prop_desc_p)


{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;


  if (!ecma_is_value_object (obj_value))
  {
    ret_value = ecma_raise_type_error (ECMA_ERR_MSG ("Expected an object."));
  }
  else
  {
    ecma_object_t *obj_p = ecma_get_object_from_value (obj_value);


    ecma_property_descriptor_t prop_desc = ecma_make_empty_property_descriptor ();


    ECMA_TRY_CATCH (enumerable_prop_value,
                    ecma_op_object_find (obj_p, ecma_get_magic_string (LIT_MAGIC_STRING_ENUMERABLE)),
                    ret_value);

    if (ecma_is_value_found (enumerable_prop_value))
    {
      uint32_t is_enumerable = (ecma_op_to_boolean (enumerable_prop_value) ? ECMA_PROP_IS_ENUMERABLE
                                                                           : ECMA_PROP_NO_OPTS);

      prop_desc.flags |= (uint16_t) (ECMA_PROP_IS_ENUMERABLE_DEFINED | is_enumerable);
    }

    ECMA_FINALIZE (enumerable_prop_value);

    if (!ECMA_IS_VALUE_ERROR (ret_value))
    {
      JERRY_ASSERT (ecma_is_value_empty (ret_value));


      ECMA_TRY_CATCH (configurable_prop_value,
                      ecma_op_object_find (obj_p, ecma_get_magic_string (LIT_MAGIC_STRING_CONFIGURABLE)),
                      ret_value);

      if (ecma_is_value_found (configurable_prop_value))
      {
        uint32_t is_configurable = (ecma_op_to_boolean (configurable_prop_value) ? ECMA_PROP_IS_CONFIGURABLE
                                                                                 : ECMA_PROP_NO_OPTS);

        prop_desc.flags |= (uint16_t) (ECMA_PROP_IS_CONFIGURABLE_DEFINED | is_configurable);
      }

      ECMA_FINALIZE (configurable_prop_value);
    }

    if (!ECMA_IS_VALUE_ERROR (ret_value))
    {
      JERRY_ASSERT (ecma_is_value_empty (ret_value));


      ECMA_TRY_CATCH (value_prop_value,
                      ecma_op_object_find (obj_p, ecma_get_magic_string (LIT_MAGIC_STRING_VALUE)),
                      ret_value);

      if (ecma_is_value_found (value_prop_value))
      {
        prop_desc.flags |= ECMA_PROP_IS_VALUE_DEFINED;
        prop_desc.value = ecma_copy_value (value_prop_value);
      }

      ECMA_FINALIZE (value_prop_value);
    }

    if (!ECMA_IS_VALUE_ERROR (ret_value))
    {
      JERRY_ASSERT (ecma_is_value_empty (ret_value));


      ECMA_TRY_CATCH (writable_prop_value,
                      ecma_op_object_find (obj_p, ecma_get_magic_string (LIT_MAGIC_STRING_WRITABLE)),
                      ret_value);

      if (ecma_is_value_found (writable_prop_value))
      {
        uint32_t is_writable = (ecma_op_to_boolean (writable_prop_value) ? ECMA_PROP_IS_WRITABLE
                                                                         : ECMA_PROP_NO_OPTS);

        prop_desc.flags |= (uint16_t) (ECMA_PROP_IS_WRITABLE_DEFINED | is_writable);
      }

      ECMA_FINALIZE (writable_prop_value);
    }

    if (!ECMA_IS_VALUE_ERROR (ret_value))
    {
      JERRY_ASSERT (ecma_is_value_empty (ret_value));


      ECMA_TRY_CATCH (get_prop_value,
                      ecma_op_object_find (obj_p, ecma_get_magic_string (LIT_MAGIC_STRING_GET)),
                      ret_value);

      if (ecma_is_value_found (get_prop_value))
      {
        if (!ecma_op_is_callable (get_prop_value)
            && !ecma_is_value_undefined (get_prop_value))
        {
          ret_value = ecma_raise_type_error (ECMA_ERR_MSG ("Expected a function."));
        }
        else
        {
          prop_desc.flags |= ECMA_PROP_IS_GET_DEFINED;

          if (ecma_is_value_undefined (get_prop_value))
          {
            prop_desc.get_p = ((void*)0);
          }
          else
          {
            JERRY_ASSERT (ecma_is_value_object (get_prop_value));

            ecma_object_t *get_p = ecma_get_object_from_value (get_prop_value);
            ecma_ref_object (get_p);

            prop_desc.get_p = get_p;
          }
        }
      }

      ECMA_FINALIZE (get_prop_value);
    }

    if (!ECMA_IS_VALUE_ERROR (ret_value))
    {
      JERRY_ASSERT (ecma_is_value_empty (ret_value));


      ECMA_TRY_CATCH (set_prop_value,
                      ecma_op_object_find (obj_p, ecma_get_magic_string (LIT_MAGIC_STRING_SET)),
                      ret_value);

      if (ecma_is_value_found (set_prop_value))
      {
        if (!ecma_op_is_callable (set_prop_value)
            && !ecma_is_value_undefined (set_prop_value))
        {
          ret_value = ecma_raise_type_error (ECMA_ERR_MSG ("Expected a function."));
        }
        else
        {
          prop_desc.flags |= ECMA_PROP_IS_SET_DEFINED;

          if (ecma_is_value_undefined (set_prop_value))
          {
            prop_desc.set_p = ((void*)0);
          }
          else
          {
            JERRY_ASSERT (ecma_is_value_object (set_prop_value));

            ecma_object_t *set_p = ecma_get_object_from_value (set_prop_value);
            ecma_ref_object (set_p);

            prop_desc.set_p = set_p;
          }
        }
      }

      ECMA_FINALIZE (set_prop_value);
    }

    if (!ECMA_IS_VALUE_ERROR (ret_value))
    {
      JERRY_ASSERT (ecma_is_value_empty (ret_value));


      if ((prop_desc.flags & (ECMA_PROP_IS_VALUE_DEFINED | ECMA_PROP_IS_WRITABLE_DEFINED))
           && (prop_desc.flags & (ECMA_PROP_IS_GET_DEFINED | ECMA_PROP_IS_SET_DEFINED)))
      {
        ret_value = ecma_raise_type_error (ECMA_ERR_MSG ("Accessors cannot be writable."));
      }
    }

    if (!ECMA_IS_VALUE_ERROR (ret_value))
    {
      JERRY_ASSERT (ecma_is_value_empty (ret_value));
    }
    else
    {
      ecma_free_property_descriptor (&prop_desc);
    }

    *out_prop_desc_p = prop_desc;
  }

  return ret_value;
}
