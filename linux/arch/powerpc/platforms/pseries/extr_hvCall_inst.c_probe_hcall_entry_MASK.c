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
struct hcall_stats {int /*<<< orphan*/  purr_start; int /*<<< orphan*/  tb_start; } ;

/* Variables and functions */
 unsigned long MAX_HCALL_OPCODE ; 
 int /*<<< orphan*/  SPRN_PURR ; 
 int /*<<< orphan*/ * hcall_stats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct hcall_stats* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *ignored, unsigned long opcode, unsigned long *args)
{
	struct hcall_stats *h;

	if (opcode > MAX_HCALL_OPCODE)
		return;

	h = FUNC2(&hcall_stats[opcode / 4]);
	h->tb_start = FUNC1();
	h->purr_start = FUNC0(SPRN_PURR);
}