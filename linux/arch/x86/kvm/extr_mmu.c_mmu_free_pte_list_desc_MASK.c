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
struct pte_list_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pte_list_desc*) ; 
 int /*<<< orphan*/  pte_list_desc_cache ; 

__attribute__((used)) static void FUNC1(struct pte_list_desc *pte_list_desc)
{
	FUNC0(pte_list_desc_cache, pte_list_desc);
}