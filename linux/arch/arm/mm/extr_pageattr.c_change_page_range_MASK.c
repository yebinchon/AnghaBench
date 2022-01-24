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
struct page_change_data {int /*<<< orphan*/  set_mask; int /*<<< orphan*/  clear_mask; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(pte_t *ptep, unsigned long addr, void *data)
{
	struct page_change_data *cdata = data;
	pte_t pte = *ptep;

	pte = FUNC0(pte, cdata->clear_mask);
	pte = FUNC1(pte, cdata->set_mask);

	FUNC2(ptep, pte, 0);
	return 0;
}