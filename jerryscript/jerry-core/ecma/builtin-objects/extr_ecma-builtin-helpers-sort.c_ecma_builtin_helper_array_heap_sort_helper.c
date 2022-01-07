
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ecma_value_t ;
typedef int ecma_builtin_helper_sort_compare_fn_t ;


 int ECMA_FINALIZE (int ) ;
 int ECMA_TRY_CATCH (int ,int ,int ) ;
 int ECMA_VALUE_EMPTY ;
 int ecma_builtin_helper_array_to_heap (int *,int,int,int ,int const) ;
 scalar_t__ ecma_is_value_empty (int ) ;
 int value ;

ecma_value_t
ecma_builtin_helper_array_heap_sort_helper (ecma_value_t *array_p,
                                            uint32_t right,
                                            ecma_value_t compare_func,
                                            const ecma_builtin_helper_sort_compare_fn_t sort_cb)
{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;


  for (uint32_t i = (right / 2) + 1; i > 0 && ecma_is_value_empty (ret_value); i--)
  {
    ECMA_TRY_CATCH (value,
                    ecma_builtin_helper_array_to_heap (array_p, i - 1, right, compare_func, sort_cb),
                    ret_value);
    ECMA_FINALIZE (value);
  }


  for (uint32_t i = right; i > 0 && ecma_is_value_empty (ret_value); i--)
  {




    ecma_value_t swap = array_p[0];
    array_p[0] = array_p[i];
    array_p[i] = swap;


    ECMA_TRY_CATCH (value,
                    ecma_builtin_helper_array_to_heap (array_p, 0, i - 1, compare_func, sort_cb),
                    ret_value);
    ECMA_FINALIZE (value);
  }

  return ret_value;
}
