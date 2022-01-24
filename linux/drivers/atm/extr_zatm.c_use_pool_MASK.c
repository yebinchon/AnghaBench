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
struct zatm_dev {TYPE_1__* pool_info; int /*<<< orphan*/ ** last_free; int /*<<< orphan*/  lock; scalar_t__ pool_base; int /*<<< orphan*/ * pool; } ;
struct atm_dev {int dummy; } ;
struct TYPE_2__ {int low_water; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int ZATM_AAL5_POOL_BASE ; 
 struct zatm_dev* FUNC1 (struct atm_dev*) ; 
 scalar_t__ dummy ; 
 int /*<<< orphan*/  FUNC2 (struct atm_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int uPD98401_RXFP_ALERT_SHIFT ; 
 int uPD98401_RXFP_BFSZ_SHIFT ; 
 int uPD98401_RXFP_BTSZ_SHIFT ; 
 int /*<<< orphan*/  FUNC6 (struct zatm_dev*,unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct atm_dev *dev,int pool)
{
	struct zatm_dev *zatm_dev;
	unsigned long flags;
	int size;

	zatm_dev = FUNC1(dev);
	if (!(zatm_dev->pool_info[pool].ref_count++)) {
		FUNC3(&zatm_dev->pool[pool]);
		size = pool-ZATM_AAL5_POOL_BASE;
		if (size < 0) size = 0; /* 64B... */
		else if (size > 10) size = 10; /* ... 64kB */
		FUNC4(&zatm_dev->lock, flags);
		FUNC6(zatm_dev,((zatm_dev->pool_info[pool].low_water/4) <<
		    uPD98401_RXFP_ALERT_SHIFT) |
		    (1 << uPD98401_RXFP_BTSZ_SHIFT) |
		    (size << uPD98401_RXFP_BFSZ_SHIFT),
		    zatm_dev->pool_base+pool*2);
		FUNC6(zatm_dev,(unsigned long) dummy,zatm_dev->pool_base+
		    pool*2+1);
		FUNC5(&zatm_dev->lock, flags);
		zatm_dev->last_free[pool] = NULL;
		FUNC2(dev,pool);
	}
	FUNC0("pool %d: %d\n",pool,zatm_dev->pool_info[pool].ref_count);
}