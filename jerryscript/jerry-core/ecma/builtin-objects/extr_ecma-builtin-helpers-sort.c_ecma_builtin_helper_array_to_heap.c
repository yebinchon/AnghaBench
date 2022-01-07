
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ecma_value_t ;
typedef int (* ecma_builtin_helper_sort_compare_fn_t ) (int ,int ,int ) ;


 int ECMA_FINALIZE (int ) ;
 scalar_t__ ECMA_NUMBER_ZERO ;
 int ECMA_TRY_CATCH (int ,int ,int ) ;
 int ECMA_VALUE_EMPTY ;
 int ECMA_VALUE_UNDEFINED ;
 int JERRY_ASSERT (int) ;
 int child_compare_value ;
 scalar_t__ ecma_get_number_from_value (int ) ;
 scalar_t__ ecma_is_value_empty (int ) ;
 int ecma_is_value_number (int ) ;
 int swap_compare_value ;

__attribute__((used)) static ecma_value_t
ecma_builtin_helper_array_to_heap (ecma_value_t *array_p,
                                   uint32_t index,
                                   uint32_t right,
                                   ecma_value_t compare_func,
                                   const ecma_builtin_helper_sort_compare_fn_t sort_cb)
{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;


  uint32_t child = index * 2 + 1;
  ecma_value_t swap = array_p[index];
  bool should_break = 0;

  while (child <= right && ecma_is_value_empty (ret_value) && !should_break)
  {
    if (child < right)
    {

      ECMA_TRY_CATCH (child_compare_value, sort_cb (array_p[child], array_p[child + 1], compare_func),
                      ret_value);

      JERRY_ASSERT (ecma_is_value_number (child_compare_value));


      if (ecma_get_number_from_value (child_compare_value) < ECMA_NUMBER_ZERO)
      {
        child++;
      }

      ECMA_FINALIZE (child_compare_value);
    }

    if (ecma_is_value_empty (ret_value))
    {
      JERRY_ASSERT (child <= right);


      ECMA_TRY_CATCH (swap_compare_value, sort_cb (array_p[child], swap, compare_func), ret_value);
      JERRY_ASSERT (ecma_is_value_number (swap_compare_value));

      if (ecma_get_number_from_value (swap_compare_value) <= ECMA_NUMBER_ZERO)
      {

        should_break = 1;
      }
      else
      {

        uint32_t parent = (child - 1) / 2;
        JERRY_ASSERT (parent <= right);
        array_p[parent] = array_p[child];


        child = child * 2 + 1;
      }

      ECMA_FINALIZE (swap_compare_value);
    }
  }





  uint32_t parent = (child - 1) / 2;
  JERRY_ASSERT (parent <= right);
  array_p[parent] = swap;

  if (ecma_is_value_empty (ret_value))
  {
    ret_value = ECMA_VALUE_UNDEFINED;
  }

  return ret_value;
}
