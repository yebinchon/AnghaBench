#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int /*<<< orphan*/  lpages; } ;
struct kvm {TYPE_2__ stat; } ;
struct TYPE_4__ {scalar_t__ level; } ;
struct TYPE_6__ {TYPE_1__ role; } ;

/* Variables and functions */
 scalar_t__ PT_PAGE_TABLE_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct kvm *kvm, u64 *sptep)
{
	if (FUNC3(*sptep)) {
		FUNC0(FUNC4(FUNC1(sptep))->role.level ==
			PT_PAGE_TABLE_LEVEL);
		FUNC2(kvm, sptep);
		--kvm->stat.lpages;
		return true;
	}

	return false;
}