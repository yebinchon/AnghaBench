
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int number_arithmetic_op ;
typedef int ecma_value_t ;
typedef int ecma_number_t ;


 int ECMA_NUMBER_ZERO ;
 int ECMA_OP_TO_NUMBER_FINALIZE (int) ;
 int ECMA_OP_TO_NUMBER_TRY_CATCH (int,int ,int ) ;
 int ECMA_VALUE_EMPTY ;




 int ecma_make_number_value (int) ;
 int ecma_op_number_remainder (int,int) ;
 int num_left ;
 int num_right ;

ecma_value_t
do_number_arithmetic (number_arithmetic_op op,
                      ecma_value_t left_value,
                      ecma_value_t right_value)
{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  ECMA_OP_TO_NUMBER_TRY_CATCH (num_left, left_value, ret_value);
  ECMA_OP_TO_NUMBER_TRY_CATCH (num_right, right_value, ret_value);

  ecma_number_t result = ECMA_NUMBER_ZERO;

  switch (op)
  {
    case 128:
    {
      result = num_left - num_right;
      break;
    }
    case 130:
    {
      result = num_left * num_right;
      break;
    }
    case 131:
    {
      result = num_left / num_right;
      break;
    }
    case 129:
    {
      result = ecma_op_number_remainder (num_left, num_right);
      break;
    }
  }

  ret_value = ecma_make_number_value (result);

  ECMA_OP_TO_NUMBER_FINALIZE (num_right);
  ECMA_OP_TO_NUMBER_FINALIZE (num_left);

  return ret_value;
}
