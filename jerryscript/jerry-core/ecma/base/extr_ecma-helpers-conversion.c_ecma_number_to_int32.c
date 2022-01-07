
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint32_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef int ecma_number_t ;


 int JERRY_ASSERT (int) ;
 scalar_t__ ecma_number_to_uint32 (int ) ;

int32_t
ecma_number_to_int32 (ecma_number_t num)
{
  uint32_t uint32_num = ecma_number_to_uint32 (num);


  const int64_t int64_2_pow_32 = (1ll << 32);


  const uint32_t uint32_2_pow_31 = (1ull << 31);

  int32_t ret;

  if (uint32_num >= uint32_2_pow_31)
  {
    ret = (int32_t) (uint32_num - int64_2_pow_32);
  }
  else
  {
    ret = (int32_t) uint32_num;
  }


  int64_t int64_num = uint32_num;

  JERRY_ASSERT (int64_num >= 0);

  if (int64_num >= uint32_2_pow_31)
  {
    JERRY_ASSERT (ret == int64_num - int64_2_pow_32);
  }
  else
  {
    JERRY_ASSERT (ret == int64_num);
  }


  return ret;
}
