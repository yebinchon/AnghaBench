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
struct vm_area_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_OSPKE ; 
 unsigned long X86_PF_INSTR ; 
 unsigned long X86_PF_PK ; 
 unsigned long X86_PF_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(unsigned long error_code,
		struct vm_area_struct *vma)
{
	/* This code is always called on the current mm */
	bool foreign = false;

	if (!FUNC1(X86_FEATURE_OSPKE))
		return false;
	if (error_code & X86_PF_PK)
		return true;
	/* this checks permission keys on the VMA: */
	if (!FUNC0(vma, (error_code & X86_PF_WRITE),
				       (error_code & X86_PF_INSTR), foreign))
		return true;
	return false;
}