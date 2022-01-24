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
struct nios2_timer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALTERA_TIMER_SNAPH_REG ; 
 int /*<<< orphan*/  ALTERA_TIMER_SNAPL_REG ; 
 int FUNC0 (struct nios2_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nios2_timer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC2(struct nios2_timer *timer)
{
	unsigned long count;

	FUNC1(timer, 0, ALTERA_TIMER_SNAPL_REG);
	count = FUNC0(timer, ALTERA_TIMER_SNAPH_REG) << 16 |
		FUNC0(timer, ALTERA_TIMER_SNAPL_REG);

	return count;
}