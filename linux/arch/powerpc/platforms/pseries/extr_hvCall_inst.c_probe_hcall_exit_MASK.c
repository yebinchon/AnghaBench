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
struct hcall_stats {scalar_t__ purr_start; int /*<<< orphan*/  purr_total; scalar_t__ tb_start; int /*<<< orphan*/  tb_total; int /*<<< orphan*/  num_calls; } ;

/* Variables and functions */
 unsigned long MAX_HCALL_OPCODE ; 
 int /*<<< orphan*/  SPRN_PURR ; 
 int /*<<< orphan*/ * hcall_stats ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 struct hcall_stats* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *ignored, unsigned long opcode, long retval,
			     unsigned long *retbuf)
{
	struct hcall_stats *h;

	if (opcode > MAX_HCALL_OPCODE)
		return;

	h = FUNC2(&hcall_stats[opcode / 4]);
	h->num_calls++;
	h->tb_total += FUNC1() - h->tb_start;
	h->purr_total += FUNC0(SPRN_PURR) - h->purr_start;
}