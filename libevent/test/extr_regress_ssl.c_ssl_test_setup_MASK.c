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
struct testcase_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct testcase_t const*) ; 
 scalar_t__ disable_tls_11_and_12 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  the_cert ; 
 int /*<<< orphan*/  the_key ; 

__attribute__((used)) static void *
FUNC5(const struct testcase_t *testcase)
{
	FUNC2();

	the_key = FUNC4();
	FUNC0(the_key);

	the_cert = FUNC3(the_key);
	FUNC0(the_cert);

	disable_tls_11_and_12 = 0;

	return FUNC1(testcase);
}