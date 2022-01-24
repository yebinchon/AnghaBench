#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int number_bitwise_logic_op ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_NUMBER_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  NUMBER_BITWISE_LOGIC_AND 134 
#define  NUMBER_BITWISE_LOGIC_OR 133 
#define  NUMBER_BITWISE_LOGIC_XOR 132 
#define  NUMBER_BITWISE_NOT 131 
#define  NUMBER_BITWISE_SHIFT_LEFT 130 
#define  NUMBER_BITWISE_SHIFT_RIGHT 129 
#define  NUMBER_BITWISE_SHIFT_URIGHT 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_left ; 
 int /*<<< orphan*/  num_right ; 

ecma_value_t
FUNC7 (number_bitwise_logic_op op, /**< number bitwise logic operation */
                         ecma_value_t left_value, /**< left value */
                         ecma_value_t right_value) /**< right value */
{
  FUNC3 (!FUNC0 (left_value)
                && !FUNC0 (right_value));

  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  FUNC2 (num_left, left_value, ret_value);
  FUNC2 (num_right, right_value, ret_value);

  ecma_number_t result = ECMA_NUMBER_ZERO;
  uint32_t right_uint32 = FUNC6 (num_right);

  switch (op)
  {
    case NUMBER_BITWISE_LOGIC_AND:
    {
      uint32_t left_uint32 = FUNC6 (num_left);
      result = (ecma_number_t) ((int32_t) (left_uint32 & right_uint32));
      break;
    }
    case NUMBER_BITWISE_LOGIC_OR:
    {
      uint32_t left_uint32 = FUNC6 (num_left);
      result = (ecma_number_t) ((int32_t) (left_uint32 | right_uint32));
      break;
    }
    case NUMBER_BITWISE_LOGIC_XOR:
    {
      uint32_t left_uint32 = FUNC6 (num_left);
      result = (ecma_number_t) ((int32_t) (left_uint32 ^ right_uint32));
      break;
    }
    case NUMBER_BITWISE_SHIFT_LEFT:
    {
      result = (ecma_number_t) (FUNC5 (num_left) << (right_uint32 & 0x1F));
      break;
    }
    case NUMBER_BITWISE_SHIFT_RIGHT:
    {
      result = (ecma_number_t) (FUNC5 (num_left) >> (right_uint32 & 0x1F));
      break;
    }
    case NUMBER_BITWISE_SHIFT_URIGHT:
    {
      uint32_t left_uint32 = FUNC6 (num_left);
      result = (ecma_number_t) (left_uint32 >> (right_uint32 & 0x1F));
      break;
    }
    case NUMBER_BITWISE_NOT:
    {
      result = (ecma_number_t) ((int32_t) ~right_uint32);
      break;
    }
  }

  ret_value = FUNC4 (result);

  FUNC1 (num_right);
  FUNC1 (num_left);

  return ret_value;
}