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
struct data_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct data_buffer*) ; 

int
FUNC1(const struct testcase_t *testcase, void *ptr)
{
	struct data_buffer *db = ptr;

	if (db) {
		FUNC0(db);
		return 1;
	}
	return 0;
}