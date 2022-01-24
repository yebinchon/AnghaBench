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
typedef  int ulong ;

/* Variables and functions */
 int AOE_PARTITIONS ; 
 int N_DEVS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  used_minors ; 
 int /*<<< orphan*/  used_minors_lock ; 

__attribute__((used)) static int
FUNC4(ulong *sysminor)
{
	ulong flags;
	ulong n;
	int error = 0;

	FUNC2(&used_minors_lock, flags);
	n = FUNC0(used_minors, N_DEVS);
	if (n < N_DEVS)
		FUNC1(n, used_minors);
	else
		error = -1;
	FUNC3(&used_minors_lock, flags);

	*sysminor = n * AOE_PARTITIONS;
	return error;
}