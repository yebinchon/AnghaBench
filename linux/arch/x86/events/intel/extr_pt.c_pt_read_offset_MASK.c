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
struct topa_page {int /*<<< orphan*/  topa; } ;
struct pt_buffer {int output_off; int cur_idx; int /*<<< orphan*/ * cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_RTIT_OUTPUT_BASE ; 
 int /*<<< orphan*/  MSR_IA32_RTIT_OUTPUT_MASK ; 
 struct topa_page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pt_buffer *buf)
{
	u64 offset, base_topa;
	struct topa_page *tp;

	FUNC1(MSR_IA32_RTIT_OUTPUT_BASE, base_topa);
	tp = FUNC0(base_topa);
	buf->cur = &tp->topa;

	FUNC1(MSR_IA32_RTIT_OUTPUT_MASK, offset);
	/* offset within current output region */
	buf->output_off = offset >> 32;
	/* index of current output region within this table */
	buf->cur_idx = (offset & 0xffffff80) >> 7;
}