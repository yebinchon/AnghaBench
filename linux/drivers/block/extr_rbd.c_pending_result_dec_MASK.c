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
struct pending_result {scalar_t__ num_pending; int result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static bool FUNC1(struct pending_result *pending, int *result)
{
	FUNC0(pending->num_pending > 0);

	if (*result && !pending->result)
		pending->result = *result;
	if (--pending->num_pending)
		return false;

	*result = pending->result;
	return true;
}