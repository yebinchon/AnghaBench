
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_number_t ;


 int ECMA_ERR_MSG (char*) ;
 int ECMA_IS_VALUE_ERROR (int) ;
 int JERRY_CONTEXT (int ) ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int ecma_finalize () ;
 int ecma_free_value (int ) ;
 int ecma_init () ;
 int ecma_make_int32_value (int) ;
 int ecma_make_nan_value () ;
 int ecma_make_number_value (double) ;
 int ecma_number_make_infinity (int) ;
 int ecma_op_to_integer (int ,int*) ;
 int ecma_raise_type_error (int ) ;
 int error_value ;
 int jmem_finalize () ;
 int jmem_init () ;

int
main (void)
{
  TEST_INIT ();

  jmem_init ();
  ecma_init ();

  ecma_number_t num;

  ecma_value_t int_num = ecma_make_int32_value (123);

  ecma_number_t result = ecma_op_to_integer (int_num, &num);

  ecma_free_value (int_num);

  TEST_ASSERT (!ECMA_IS_VALUE_ERROR (result));
  TEST_ASSERT (num == 123);


  ecma_value_t error = ecma_raise_type_error (ECMA_ERR_MSG ("I am a neat little error message"));

  result = ecma_op_to_integer (error, &num);

  ecma_free_value (JERRY_CONTEXT (error_value));

  TEST_ASSERT (ECMA_IS_VALUE_ERROR (result));


  ecma_value_t nan = ecma_make_nan_value ();

  result = ecma_op_to_integer (nan, &num);

  ecma_free_value (nan);

  TEST_ASSERT (!ECMA_IS_VALUE_ERROR (result));
  TEST_ASSERT (num == 0);



  ecma_value_t negative_zero = ecma_make_number_value (-0.0f);

  result = ecma_op_to_integer (negative_zero, &num);

  ecma_free_value (negative_zero);

  TEST_ASSERT (!ECMA_IS_VALUE_ERROR (result));
  TEST_ASSERT (1.0f / num == ecma_number_make_infinity (1));


  ecma_value_t positive_zero = ecma_make_number_value (+0.0f);

  result = ecma_op_to_integer (positive_zero, &num);

  ecma_free_value (positive_zero);

  TEST_ASSERT (!ECMA_IS_VALUE_ERROR (result));
  TEST_ASSERT (1.0f / num == ecma_number_make_infinity (0));


  ecma_value_t negative_infinity = ecma_make_number_value (ecma_number_make_infinity (1));

  result = ecma_op_to_integer (negative_infinity, &num);

  ecma_free_value (negative_infinity);

  TEST_ASSERT (!ECMA_IS_VALUE_ERROR (result));
  TEST_ASSERT (num == ecma_number_make_infinity (1));


  ecma_value_t positive_infinity = ecma_make_number_value (ecma_number_make_infinity (0));

  result = ecma_op_to_integer (positive_infinity, &num);

  ecma_free_value (positive_infinity);

  TEST_ASSERT (!ECMA_IS_VALUE_ERROR (result));
  TEST_ASSERT (num == ecma_number_make_infinity (0));


  ecma_value_t floor = ecma_make_number_value (3.001f);

  result = ecma_op_to_integer (floor, &num);

  ecma_free_value (floor);

  TEST_ASSERT (!ECMA_IS_VALUE_ERROR (result));
  TEST_ASSERT (num == 3);

  ecma_value_t floor2 = ecma_make_number_value (-26.5973);

  result = ecma_op_to_integer (floor2, &num);

  ecma_free_value (floor2);

  TEST_ASSERT (!ECMA_IS_VALUE_ERROR (result));
  TEST_ASSERT (num == -26);

  ecma_finalize ();
  jmem_finalize ();

  return 0;
}
