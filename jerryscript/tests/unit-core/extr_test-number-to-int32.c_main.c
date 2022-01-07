
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uint32_num; scalar_t__ int32_num; int num; } ;
typedef TYPE_1__ uint32_test_case_t ;
typedef int uint32_t ;
typedef int test_cases_uint32 ;
typedef int test_cases_int32 ;
typedef TYPE_1__ const int32_test_case_t ;


 int INFINITY ;
 int NAN ;
 int TEST_ASSERT (int) ;
 TYPE_1__ const TEST_CASE (int,int) ;
 int TEST_INIT () ;
 scalar_t__ ecma_number_to_int32 (int ) ;
 scalar_t__ ecma_number_to_uint32 (int ) ;

int
main (void)
{
  TEST_INIT ();

  const uint32_test_case_t test_cases_uint32[] =
  {

    { 1.0, 1 },
    { 0.0, 0 },
    { NAN, 0 },
    { -NAN, 0 },
    { INFINITY, 0 },
    { -INFINITY, 0 },
    { 0.1, 0 },
    { -0.1, 0 },
    { 1.1, 1 },
    { -1.1, 4294967295 },
    { 4294967295, 4294967295 },
    { -4294967295, 1 },
    { 4294967296, 0 },
    { -4294967296, 0 },
    { 4294967297, 1 },
    { -4294967297, 4294967295 }

  };

  for (uint32_t i = 0;
       i < sizeof (test_cases_uint32) / sizeof (test_cases_uint32[0]);
       i++)
  {
    TEST_ASSERT (ecma_number_to_uint32 (test_cases_uint32[i].num) == test_cases_uint32[i].uint32_num);
  }

  int32_test_case_t test_cases_int32[] =
  {

    { 1.0, 1 },
    { 0.0, 0 },
    { NAN, 0 },
    { -NAN, 0 },
    { INFINITY, 0 },
    { -INFINITY, 0 },
    { 0.1, 0 },
    { -0.1, 0 },
    { 1.1, 1 },
    { -1.1, -1 },
    { 4294967295, -1 },
    { -4294967295, 1 },
    { 4294967296, 0 },
    { -4294967296, 0 },
    { 4294967297, 1 },
    { -4294967297, -1 },
    { 2147483648, -2147483648 },
    { -2147483648, -2147483648 },
    { 2147483647, 2147483647 },
    { -2147483647, -2147483647 },
    { -2147483649, 2147483647 },
    { 2147483649, -2147483647 }

  };

  for (uint32_t i = 0;
       i < sizeof (test_cases_int32) / sizeof (test_cases_int32[0]);
       i++)
  {
    TEST_ASSERT (ecma_number_to_int32 (test_cases_int32[i].num) == test_cases_int32[i].int32_num);
  }

  return 0;
}
