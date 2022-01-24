#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ erst_disable ; 
 TYPE_1__ erst_record_id_cache ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(int *pos)
{
	int rc;

	if (erst_disable)
		return -ENODEV;

	rc = FUNC0(&erst_record_id_cache.lock);
	if (rc)
		return rc;
	erst_record_id_cache.refcount++;
	FUNC1(&erst_record_id_cache.lock);

	*pos = 0;

	return 0;
}