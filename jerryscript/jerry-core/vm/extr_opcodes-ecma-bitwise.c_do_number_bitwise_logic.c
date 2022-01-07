
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int number_bitwise_logic_op ;
typedef int int32_t ;
typedef int ecma_value_t ;
typedef int ecma_number_t ;


 int ECMA_IS_VALUE_ERROR (int ) ;
 int ECMA_NUMBER_ZERO ;
 int ECMA_OP_TO_NUMBER_FINALIZE (int ) ;
 int ECMA_OP_TO_NUMBER_TRY_CATCH (int ,int ,int ) ;
 int ECMA_VALUE_EMPTY ;
 int JERRY_ASSERT (int) ;







 int ecma_make_number_value (int ) ;
 int ecma_number_to_int32 (int ) ;
 int ecma_number_to_uint32 (int ) ;
 int num_left ;
 int num_right ;

ecma_value_t
do_number_bitwise_logic (number_bitwise_logic_op op,
                         ecma_value_t left_value,
                         ecma_value_t right_value)
{
  JERRY_ASSERT (!ECMA_IS_VALUE_ERROR (left_value)
                && !ECMA_IS_VALUE_ERROR (right_value));

  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  ECMA_OP_TO_NUMBER_TRY_CATCH (num_left, left_value, ret_value);
  ECMA_OP_TO_NUMBER_TRY_CATCH (num_right, right_value, ret_value);

  ecma_number_t result = ECMA_NUMBER_ZERO;
  uint32_t right_uint32 = ecma_number_to_uint32 (num_right);

  switch (op)
  {
    case 134:
    {
      uint32_t left_uint32 = ecma_number_to_uint32 (num_left);
      result = (ecma_number_t) ((int32_t) (left_uint32 & right_uint32));
      break;
    }
    case 133:
    {
      uint32_t left_uint32 = ecma_number_to_uint32 (num_left);
      result = (ecma_number_t) ((int32_t) (left_uint32 | right_uint32));
      break;
    }
    case 132:
    {
      uint32_t left_uint32 = ecma_number_to_uint32 (num_left);
      result = (ecma_number_t) ((int32_t) (left_uint32 ^ right_uint32));
      break;
    }
    case 130:
    {
      result = (ecma_number_t) (ecma_number_to_int32 (num_left) << (right_uint32 & 0x1F));
      break;
    }
    case 129:
    {
      result = (ecma_number_t) (ecma_number_to_int32 (num_left) >> (right_uint32 & 0x1F));
      break;
    }
    case 128:
    {
      uint32_t left_uint32 = ecma_number_to_uint32 (num_left);
      result = (ecma_number_t) (left_uint32 >> (right_uint32 & 0x1F));
      break;
    }
    case 131:
    {
      result = (ecma_number_t) ((int32_t) ~right_uint32);
      break;
    }
  }

  ret_value = ecma_make_number_value (result);

  ECMA_OP_TO_NUMBER_FINALIZE (num_right);
  ECMA_OP_TO_NUMBER_FINALIZE (num_left);

  return ret_value;
}
