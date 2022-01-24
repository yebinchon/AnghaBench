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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  used_minors ; 
 int /*<<< orphan*/  used_minors_lock ; 

__attribute__((used)) static int
FUNC5(ulong *sysminor, ulong aoemaj, int aoemin)
{
	ulong flags;
	ulong n;
	int error = 0;
	enum {
		/* for backwards compatibility when !aoe_dyndevs,
		 * a static number of supported slots per shelf */
		NPERSHELF = 16,
	};

	if (aoemin >= NPERSHELF) {
		FUNC0("aoe: %s %d slots per shelf\n",
			"static minor device numbers support only",
			NPERSHELF);
		error = -1;
		goto out;
	}

	n = aoemaj * NPERSHELF + aoemin;
	if (n >= N_DEVS) {
		FUNC0("aoe: %s with e%ld.%d\n",
			"cannot use static minor device numbers",
			aoemaj, aoemin);
		error = -1;
		goto out;
	}

	FUNC2(&used_minors_lock, flags);
	if (FUNC4(n, used_minors)) {
		FUNC0("aoe: %s %lu\n",
			"existing device already has static minor number",
			n);
		error = -1;
	} else
		FUNC1(n, used_minors);
	FUNC3(&used_minors_lock, flags);
	*sysminor = n * AOE_PARTITIONS;
out:
	return error;
}