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
struct nullb_page {int dummy; } ;
struct nullb {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct nullb_page* FUNC0 (struct nullb*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct nullb_page *FUNC1(struct nullb *nullb,
	sector_t sector, bool for_write, bool ignore_cache)
{
	struct nullb_page *page = NULL;

	if (!ignore_cache)
		page = FUNC0(nullb, sector, for_write, true);
	if (page)
		return page;
	return FUNC0(nullb, sector, for_write, false);
}