
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;


 int ECMA_OP_TO_NUMBER_FINALIZE (int ) ;
 int ECMA_OP_TO_NUMBER_TRY_CATCH (int ,int ,int ) ;
 int ECMA_VALUE_EMPTY ;
 int ecma_make_number_value (int ) ;
 int num_var_value ;

ecma_value_t
opfunc_unary_operation (ecma_value_t left_value,
                        bool is_plus)
{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  ECMA_OP_TO_NUMBER_TRY_CATCH (num_var_value,
                               left_value,
                               ret_value);

  ret_value = ecma_make_number_value (is_plus ? num_var_value : -num_var_value);

  ECMA_OP_TO_NUMBER_FINALIZE (num_var_value);

  return ret_value;
}
