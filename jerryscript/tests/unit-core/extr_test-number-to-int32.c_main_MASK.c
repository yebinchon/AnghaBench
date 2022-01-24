#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ uint32_num; scalar_t__ int32_num; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ uint32_test_case_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  test_cases_uint32 ;
typedef  int /*<<< orphan*/  test_cases_int32 ;
typedef  TYPE_1__ const int32_test_case_t ;

/* Variables and functions */
 int INFINITY ; 
 int NAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ const FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (void)
{
  FUNC2 ();

  const uint32_test_case_t test_cases_uint32[] =
  {
#define TEST_CASE(num, uint32) { num, uint32 }
    TEST_CASE (1.0, 1),
    TEST_CASE (0.0, 0),
    TEST_CASE (NAN, 0),
    TEST_CASE (-NAN, 0),
    TEST_CASE (INFINITY, 0),
    TEST_CASE (-INFINITY, 0),
    TEST_CASE (0.1, 0),
    TEST_CASE (-0.1, 0),
    TEST_CASE (1.1, 1),
    TEST_CASE (-1.1, 4294967295),
    TEST_CASE (4294967295, 4294967295),
    TEST_CASE (-4294967295, 1),
    TEST_CASE (4294967296, 0),
    TEST_CASE (-4294967296, 0),
    TEST_CASE (4294967297, 1),
    TEST_CASE (-4294967297, 4294967295)
#undef TEST_CASE
  };

  for (uint32_t i = 0;
       i < sizeof (test_cases_uint32) / sizeof (test_cases_uint32[0]);
       i++)
  {
    FUNC0 (FUNC4 (test_cases_uint32[i].num) == test_cases_uint32[i].uint32_num);
  }

  int32_test_case_t test_cases_int32[] =
  {
#define TEST_CASE(num, int32) { num, int32 }
    TEST_CASE (1.0, 1),
    TEST_CASE (0.0, 0),
    TEST_CASE (NAN, 0),
    TEST_CASE (-NAN, 0),
    TEST_CASE (INFINITY, 0),
    TEST_CASE (-INFINITY, 0),
    TEST_CASE (0.1, 0),
    TEST_CASE (-0.1, 0),
    TEST_CASE (1.1, 1),
    TEST_CASE (-1.1, -1),
    TEST_CASE (4294967295, -1),
    TEST_CASE (-4294967295, 1),
    TEST_CASE (4294967296, 0),
    TEST_CASE (-4294967296, 0),
    TEST_CASE (4294967297, 1),
    TEST_CASE (-4294967297, -1),
    TEST_CASE (2147483648, -2147483648),
    TEST_CASE (-2147483648, -2147483648),
    TEST_CASE (2147483647, 2147483647),
    TEST_CASE (-2147483647, -2147483647),
    TEST_CASE (-2147483649, 2147483647),
    TEST_CASE (2147483649, -2147483647)
#undef TEST_CASE
  };

  for (uint32_t i = 0;
       i < sizeof (test_cases_int32) / sizeof (test_cases_int32[0]);
       i++)
  {
    FUNC0 (FUNC3 (test_cases_int32[i].num) == test_cases_int32[i].int32_num);
  }

  return 0;
}