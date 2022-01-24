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
struct TYPE_2__ {int /*<<< orphan*/  slb_flt; } ;
struct spu {int slb_replace; TYPE_1__ stats; int /*<<< orphan*/  mm; } ;
struct copro_slb {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,struct copro_slb*) ; 
 int /*<<< orphan*/  FUNC1 (struct spu*,int,struct copro_slb*) ; 
 int /*<<< orphan*/  FUNC2 (struct spu*) ; 

__attribute__((used)) static int FUNC3(struct spu *spu, unsigned long ea)
{
	struct copro_slb slb;
	int ret;

	ret = FUNC0(spu->mm, ea, &slb);
	if (ret)
		return ret;

	FUNC1(spu, spu->slb_replace, &slb);

	spu->slb_replace++;
	if (spu->slb_replace >= 8)
		spu->slb_replace = 0;

	FUNC2(spu);
	spu->stats.slb_flt++;
	return 0;
}