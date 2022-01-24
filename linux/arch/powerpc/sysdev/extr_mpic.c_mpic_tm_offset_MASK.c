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
struct mpic {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MPIC_TIMER_GROUP_STRIDE ; 
 int /*<<< orphan*/  TIMER_STRIDE ; 

__attribute__((used)) static inline unsigned int FUNC1(struct mpic *mpic, unsigned int tm)
{
	return (tm >> 2) * MPIC_TIMER_GROUP_STRIDE +
	       (tm & 3) * FUNC0(TIMER_STRIDE);
}