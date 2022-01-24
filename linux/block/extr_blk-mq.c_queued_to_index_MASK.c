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

/* Variables and functions */
 scalar_t__ BLK_MQ_MAX_DISPATCH_ORDER ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline unsigned int FUNC2(unsigned int queued)
{
	if (!queued)
		return 0;

	return FUNC1(BLK_MQ_MAX_DISPATCH_ORDER - 1, FUNC0(queued) + 1);
}