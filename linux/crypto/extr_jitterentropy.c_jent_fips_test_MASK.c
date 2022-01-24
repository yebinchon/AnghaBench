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
struct rand_data {scalar_t__ old_data; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct rand_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct rand_data *ec)
{
	if (!FUNC0())
		return;

	/* prime the FIPS test */
	if (!ec->old_data) {
		ec->old_data = ec->data;
		FUNC1(ec);
	}

	if (ec->data == ec->old_data)
		FUNC2("jitterentropy: Duplicate output detected\n");

	ec->old_data = ec->data;
}