
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ecma_number_t ;


 scalar_t__ ecma_number_is_infinity (int) ;
 int ecma_number_is_nan (int) ;
 scalar_t__ ecma_number_is_negative (int) ;
 scalar_t__ ecma_number_is_zero (int) ;
 int ecma_number_to_uint32 (int) ;

uint32_t
ecma_builtin_helper_array_index_normalize (ecma_number_t index,
                                           uint32_t length,
                                           bool is_last_index_of)
{
  uint32_t norm_index;

  if (!ecma_number_is_nan (index))
  {

    if (ecma_number_is_zero (index))
    {
      norm_index = 0;
    }
    else if (ecma_number_is_infinity (index))
    {
      if (is_last_index_of)
      {
        norm_index = ecma_number_is_negative (index) ? (uint32_t) -1 : length - 1;
      }
      else
      {
        norm_index = ecma_number_is_negative (index) ? 0 : length;
      }
    }
    else
    {
      if (ecma_number_is_negative (index))
      {
        ecma_number_t index_neg = -index;

        if (is_last_index_of)
        {
          norm_index = length - ecma_number_to_uint32 (index_neg);
        }
        else
        {
          if (index_neg > length)
          {
            norm_index = 0;
          }
          else
          {
            norm_index = length - ecma_number_to_uint32 (index_neg);
          }
        }
      }
      else
      {
        if (index > length)
        {
          norm_index = is_last_index_of ? length - 1 : length;
        }
        else
        {
          norm_index = ecma_number_to_uint32 (index);
        }
      }
    }
  }
  else
  {
    norm_index = 0;
  }

  return norm_index;
}
