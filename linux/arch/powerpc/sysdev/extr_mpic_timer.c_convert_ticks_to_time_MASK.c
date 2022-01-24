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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ time64_t ;
struct timer_group_priv {int /*<<< orphan*/  timerfreq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct timer_group_priv *priv,
		const u64 ticks, time64_t *time)
{
	*time = (u64)FUNC0(ticks, priv->timerfreq);
}