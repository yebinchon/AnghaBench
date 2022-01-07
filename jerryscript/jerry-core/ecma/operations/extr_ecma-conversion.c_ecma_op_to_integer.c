
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_number_t ;


 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int ECMA_NUMBER_ZERO ;
 int ECMA_VALUE_EMPTY ;
 int ecma_get_number (int ,int *) ;
 scalar_t__ ecma_number_is_infinity (int ) ;
 scalar_t__ ecma_number_is_nan (int ) ;
 scalar_t__ ecma_number_is_negative (int ) ;
 scalar_t__ ecma_number_is_zero (int ) ;
 int fabs (int ) ;
 int floor (int ) ;

ecma_value_t
ecma_op_to_integer (ecma_value_t value,
                    ecma_number_t *number_p)
{
  if (ECMA_IS_VALUE_ERROR (value))
  {
    return value;
  }


  ecma_value_t to_number = ecma_get_number (value, number_p);


  if (ECMA_IS_VALUE_ERROR (to_number))
  {
    return to_number;
  }

  ecma_number_t number = *number_p;


  if (ecma_number_is_nan (number))
  {
    *number_p = ECMA_NUMBER_ZERO;
    return ECMA_VALUE_EMPTY;
  }


  if (ecma_number_is_zero (number) || ecma_number_is_infinity (number))
  {
    return ECMA_VALUE_EMPTY;
  }

  ecma_number_t floor_fabs = floor (fabs (number));


  *number_p = ecma_number_is_negative (number) ? -floor_fabs : floor_fabs;
  return ECMA_VALUE_EMPTY;
}
