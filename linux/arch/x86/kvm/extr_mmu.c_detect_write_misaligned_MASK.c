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
struct TYPE_2__ {scalar_t__ gpte_is_8_bytes; int /*<<< orphan*/  word; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct kvm_mmu_page *sp, gpa_t gpa,
				    int bytes)
{
	unsigned offset, pte_size, misaligned;

	FUNC1("misaligned: gpa %llx bytes %d role %x\n",
		 gpa, bytes, sp->role.word);

	offset = FUNC0(gpa);
	pte_size = sp->role.gpte_is_8_bytes ? 8 : 4;

	/*
	 * Sometimes, the OS only writes the last one bytes to update status
	 * bits, for example, in linux, andb instruction is used in clear_bit().
	 */
	if (!(offset & (pte_size - 1)) && bytes == 1)
		return false;

	misaligned = (offset ^ (offset + bytes - 1)) & ~(pte_size - 1);
	misaligned |= bytes < 4;

	return misaligned;
}