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
typedef  scalar_t__ u32 ;
struct d0_single_user_mode {int /*<<< orphan*/  num_locking_objects; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static bool FUNC2(const void *data)
{
	const struct d0_single_user_mode *sum = data;
	u32 nlo = FUNC0(sum->num_locking_objects);

	if (nlo == 0) {
		FUNC1("Need at least one locking object.\n");
		return false;
	}

	FUNC1("Number of locking objects: %d\n", nlo);

	return true;
}