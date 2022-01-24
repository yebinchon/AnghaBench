#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  bd_emupage_allocmap; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  TYPE_1__ mm_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct mm_struct *mm)
{
	mm_context_t *mm_ctx = &mm->context;

	FUNC0(mm_ctx->bd_emupage_allocmap);
}