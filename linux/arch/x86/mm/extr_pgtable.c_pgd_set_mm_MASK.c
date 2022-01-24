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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {struct mm_struct* pt_mm; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(pgd_t *pgd, struct mm_struct *mm)
{
	FUNC0(pgd)->pt_mm = mm;
}