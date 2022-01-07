
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int ecma_number_t ;


 scalar_t__ ecma_number_is_infinity (int ) ;
 scalar_t__ ecma_number_is_nan (int ) ;
 int ecma_number_is_negative (int ) ;
 scalar_t__ ecma_number_to_uint32 (int ) ;

uint32_t
ecma_builtin_helper_string_index_normalize (ecma_number_t index,
                                            uint32_t length,
                                            bool nan_to_zero)
{
  uint32_t norm_index = 0;

  if (ecma_number_is_nan (index))
  {
    if (!nan_to_zero)
    {
      norm_index = length;
    }
  }
  else if (!ecma_number_is_negative (index))
  {
    if (ecma_number_is_infinity (index))
    {
      norm_index = length;
    }
    else
    {
      norm_index = ecma_number_to_uint32 (index);

      if (norm_index > length)
      {
        norm_index = length;
      }
    }
  }

  return norm_index;
}
