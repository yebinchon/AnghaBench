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
struct nvdimm {int dummy; } ;
struct nfit_mem {scalar_t__ memdev_bdw; scalar_t__ memdev_pmem; } ;

/* Variables and functions */
 struct nfit_mem* FUNC0 (struct nvdimm*) ; 

__attribute__((used)) static int FUNC1(struct nvdimm *nvdimm)
{
	struct nfit_mem *nfit_mem = FUNC0(nvdimm);
	int formats = 0;

	if (nfit_mem->memdev_pmem)
		formats++;
	if (nfit_mem->memdev_bdw)
		formats++;
	return formats;
}