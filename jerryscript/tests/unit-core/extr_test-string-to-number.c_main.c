
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nums ;
typedef int jerry_char_t ;
typedef scalar_t__ const ecma_number_t ;


 int INFINITY ;
 int NAN ;
 int TEST_INIT () ;
 int ecma_number_is_nan (scalar_t__ const) ;
 scalar_t__ ecma_utf8_string_to_number (int const*,int ) ;
 int lit_zt_utf8_string_size (int const*) ;

int
main (void)
{
  TEST_INIT ();

  const jerry_char_t *strings[] =
  {
    (const jerry_char_t *) "1",
    (const jerry_char_t *) "0.5",
    (const jerry_char_t *) "12345",
    (const jerry_char_t *) "1e-45",
    (const jerry_char_t *) "-2.5e+38",
    (const jerry_char_t *) "-2.5e38",
    (const jerry_char_t *) "- 2.5e+38",
    (const jerry_char_t *) "-2 .5e+38",
    (const jerry_char_t *) "-2. 5e+38",
    (const jerry_char_t *) "-2.5e+ 38",
    (const jerry_char_t *) "-2.5 e+38",
    (const jerry_char_t *) "-2.5e +38",
    (const jerry_char_t *) "NaN",
    (const jerry_char_t *) "abc",
    (const jerry_char_t *) "   Infinity  ",
    (const jerry_char_t *) "-Infinity",
    (const jerry_char_t *) "0",
    (const jerry_char_t *) "0",
  };

  const ecma_number_t nums[] =
  {
    (ecma_number_t) 1.0,
    (ecma_number_t) 0.5,
    (ecma_number_t) 12345.0,
    (ecma_number_t) 1.0e-45,
    (ecma_number_t) -2.5e+38,
    (ecma_number_t) -2.5e+38,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) INFINITY,
    (ecma_number_t) -INFINITY,
    (ecma_number_t) +0.0,
    (ecma_number_t) -0.0
  };

  for (uint32_t i = 0;
       i < sizeof (nums) / sizeof (nums[0]);
       i++)
  {
    ecma_number_t num = ecma_utf8_string_to_number (strings[i], lit_zt_utf8_string_size (strings[i]));

    if (num != nums[i]
        && (!ecma_number_is_nan (num)
            || !ecma_number_is_nan (nums[i])))
    {
      return 1;
    }
  }

  return 0;
}
