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
struct iommu {int ctx_lowest_free; int /*<<< orphan*/  ctx_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct iommu *iommu, int ctx)
{
	if (FUNC1(ctx)) {
		FUNC0(ctx, iommu->ctx_bitmap);
		if (ctx < iommu->ctx_lowest_free)
			iommu->ctx_lowest_free = ctx;
	}
}