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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page* FUNC1 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct page **head,
		struct page *chain_first, struct page *chain_last)
{
#if 1
	struct page *tmp;
	tmp = FUNC1(chain_first, NULL);
	FUNC0(tmp != chain_last);
#endif

	/* add chain to head */
	FUNC2(chain_last, (unsigned long)*head);
	*head = chain_first;
}