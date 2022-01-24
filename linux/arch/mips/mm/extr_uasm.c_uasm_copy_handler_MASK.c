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
typedef  int /*<<< orphan*/  u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uasm_label*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC2 (struct uasm_reloc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 

void FUNC3(struct uasm_reloc *rel, struct uasm_label *lab,
				u32 *first, u32 *end, u32 *target)
{
	long off = (long)(target - first);

	FUNC0(target, first, (end - first) * sizeof(u32));

	FUNC2(rel, first, end, off);
	FUNC1(lab, first, end, off);
}