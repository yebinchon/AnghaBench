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
typedef  scalar_t__ u64 ;
struct nfit_blk_mmio {int /*<<< orphan*/  size; } ;
struct nfit_blk {struct nd_region* nd_region; struct nfit_blk_mmio* mmio; } ;
struct nd_region {int dummy; } ;
struct nd_blk_region {int dummy; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 size_t BDW ; 
 int FUNC0 (struct nfit_blk*,scalar_t__,void*,scalar_t__,int,unsigned int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct nfit_blk* FUNC2 (struct nd_blk_region*) ; 
 unsigned int FUNC3 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_region*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct nd_blk_region *ndbr,
		resource_size_t dpa, void *iobuf, u64 len, int rw)
{
	struct nfit_blk *nfit_blk = FUNC2(ndbr);
	struct nfit_blk_mmio *mmio = &nfit_blk->mmio[BDW];
	struct nd_region *nd_region = nfit_blk->nd_region;
	unsigned int lane, copied = 0;
	int rc = 0;

	lane = FUNC3(nd_region);
	while (len) {
		u64 c = FUNC1(len, mmio->size);

		rc = FUNC0(nfit_blk, dpa + copied,
				iobuf + copied, c, rw, lane);
		if (rc)
			break;

		copied += c;
		len -= c;
	}
	FUNC4(nd_region, lane);

	return rc;
}