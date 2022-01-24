#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void const*,unsigned int) ; 
 TYPE_1__ input_pool ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC7(const void *buf, unsigned int size)
{
	unsigned long time = FUNC3() ^ jiffies;
	unsigned long flags;

	if (!FUNC1() && size)
		FUNC2(buf, size);

	FUNC6(size, _RET_IP_);
	FUNC4(&input_pool.lock, flags);
	FUNC0(&input_pool, buf, size);
	FUNC0(&input_pool, &time, sizeof(time));
	FUNC5(&input_pool.lock, flags);
}