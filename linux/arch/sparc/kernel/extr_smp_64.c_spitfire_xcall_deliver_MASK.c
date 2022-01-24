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
typedef  int /*<<< orphan*/  u16 ;
struct trap_per_cpu {int /*<<< orphan*/  cpu_mondo_block_pa; int /*<<< orphan*/  cpu_list_pa; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct trap_per_cpu *tb, int cnt)
{
	u64 *mondo, data0, data1, data2;
	u16 *cpu_list;
	u64 pstate;
	int i;

	__asm__ __volatile__("rdpr %%pstate, %0" : "=r" (pstate));
	cpu_list = FUNC0(tb->cpu_list_pa);
	mondo = FUNC0(tb->cpu_mondo_block_pa);
	data0 = mondo[0];
	data1 = mondo[1];
	data2 = mondo[2];
	for (i = 0; i < cnt; i++)
		FUNC1(data0, data1, data2, pstate, cpu_list[i]);
}