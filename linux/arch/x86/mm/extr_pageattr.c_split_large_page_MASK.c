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
struct page {int dummy; } ;
struct cpa_data {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct cpa_data*,int /*<<< orphan*/ *,unsigned long,struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpa_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cpa_data *cpa, pte_t *kpte,
			    unsigned long address)
{
	struct page *base;

	if (!FUNC3())
		FUNC5(&cpa_lock);
	base = FUNC2(GFP_KERNEL, 0);
	if (!FUNC3())
		FUNC4(&cpa_lock);
	if (!base)
		return -ENOMEM;

	if (FUNC1(cpa, kpte, address, base))
		FUNC0(base);

	return 0;
}