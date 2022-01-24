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
typedef  scalar_t__ u32 ;
struct pci_pbm_info {scalar_t__ msiq_rotor; scalar_t__ msiq_first; scalar_t__ msiq_num; } ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC2(struct pci_pbm_info *pbm)
{
	static DEFINE_SPINLOCK(rotor_lock);
	unsigned long flags;
	u32 ret, rotor;

	FUNC0(&rotor_lock, flags);

	rotor = pbm->msiq_rotor;
	ret = pbm->msiq_first + rotor;

	if (++rotor >= pbm->msiq_num)
		rotor = 0;
	pbm->msiq_rotor = rotor;

	FUNC1(&rotor_lock, flags);

	return ret;
}