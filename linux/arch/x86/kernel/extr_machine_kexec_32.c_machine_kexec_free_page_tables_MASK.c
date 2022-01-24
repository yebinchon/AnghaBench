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
struct TYPE_2__ {int /*<<< orphan*/ * pte1; int /*<<< orphan*/ * pte0; int /*<<< orphan*/ * pmd1; int /*<<< orphan*/ * pmd0; int /*<<< orphan*/ * pgd; } ;
struct kimage {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGD_ALLOCATION_ORDER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kimage *image)
{
	FUNC1((unsigned long)image->arch.pgd, PGD_ALLOCATION_ORDER);
	image->arch.pgd = NULL;
#ifdef CONFIG_X86_PAE
	free_page((unsigned long)image->arch.pmd0);
	image->arch.pmd0 = NULL;
	free_page((unsigned long)image->arch.pmd1);
	image->arch.pmd1 = NULL;
#endif
	FUNC0((unsigned long)image->arch.pte0);
	image->arch.pte0 = NULL;
	FUNC0((unsigned long)image->arch.pte1);
	image->arch.pte1 = NULL;
}