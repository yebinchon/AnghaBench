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
typedef  unsigned long u64 ;
struct page {int dummy; } ;
struct kvmppc_spapr_tce_table {struct page** pages; scalar_t__ offset; } ;

/* Variables and functions */
 unsigned long TCES_PER_PAGE ; 
 struct page* FUNC0 (struct kvmppc_spapr_tce_table*,unsigned long) ; 
 unsigned long* FUNC1 (struct page*) ; 

__attribute__((used)) static void FUNC2(struct kvmppc_spapr_tce_table *stt,
		unsigned long idx, unsigned long tce)
{
	struct page *page;
	u64 *tbl;
	unsigned long sttpage;

	idx -= stt->offset;
	sttpage = idx / TCES_PER_PAGE;
	page = stt->pages[sttpage];

	if (!page) {
		/* We allow any TCE, not just with read|write permissions */
		if (!tce)
			return;

		page = FUNC0(stt, sttpage);
		if (!page)
			return;
	}
	tbl = FUNC1(page);

	tbl[idx % TCES_PER_PAGE] = tce;
}