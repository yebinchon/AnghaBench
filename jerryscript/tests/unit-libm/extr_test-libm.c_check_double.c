
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_2__ {double value; scalar_t__ bits64; scalar_t__* bits32; } ;
typedef TYPE_1__ double_bits_t ;


 scalar_t__ isnan (double) ;
 int passed ;
 int printf (char*,...) ;

__attribute__((used)) static void
check_double (const char *expr, double computed, double expected)
{
  double_bits_t computed_bits;
  double_bits_t expected_bits;

  computed_bits.value = computed;
  expected_bits.value = expected;

  printf ("%s = 0x%08x%08x [expected=0x%08x%08x] ", expr,
          (unsigned int) computed_bits.bits32[1], (unsigned int) computed_bits.bits32[0],
          (unsigned int) expected_bits.bits32[1], (unsigned int) expected_bits.bits32[0]);

  bool result;
  if (isnan (computed) && isnan (expected))
  {
    result = 1;
  }
  else
  {
    int64_t diff = (int64_t) (computed_bits.bits64 - expected_bits.bits64);
    if (diff < 0)
    {
      diff = -diff;
    }

    if (diff <= 1)
    {
      result = 1;
      if (diff != 0)
      {
        printf ("APPROX ");
      }
    }
    else
    {
      result = 0;
    }
  }
  printf ("%s\n", result ? "PASS" : "FAIL");

  passed &= result;
}
