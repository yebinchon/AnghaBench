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
typedef  int u64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt_scaling_div ; 
 int /*<<< orphan*/  mt_scaling_mult ; 
 scalar_t__ smp_cpu_mtid ; 

__attribute__((used)) static inline u64 FUNC1(u64 vtime)
{
	u64 mult = FUNC0(mt_scaling_mult);
	u64 div = FUNC0(mt_scaling_div);

	if (smp_cpu_mtid)
		return vtime * mult / div;
	return vtime;
}