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
typedef  enum cl_test_status { ____Placeholder_cl_test_status } cl_test_status ;

/* Variables and functions */
#define  CL_TEST_FAILURE 131 
#define  CL_TEST_NOTRUN 130 
#define  CL_TEST_OK 129 
#define  CL_TEST_SKIP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(const char *test_name, int test_number, enum cl_test_status status)
{
	(void)test_name;
	(void)test_number;

	switch(status) {
	case CL_TEST_OK: FUNC1("."); break;
	case CL_TEST_FAILURE: FUNC1("F"); break;
	case CL_TEST_SKIP: FUNC1("S"); break;
	case CL_TEST_NOTRUN: FUNC1("N"); break;
	}

	FUNC0(stdout);
}