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
typedef  int /*<<< orphan*/  u64 ;
struct blkcg_gq {int /*<<< orphan*/  delay_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcg_gq*,int /*<<< orphan*/ ) ; 

void FUNC2(struct blkcg_gq *blkg, u64 now, u64 delta)
{
	FUNC1(blkg, now);
	FUNC0(delta, &blkg->delay_nsec);
}