#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* data; void* addr; } ;
union cvmx_pescx_cfg_rd {TYPE_2__ s; void* u64; } ;
struct TYPE_3__ {void* data; void* addr; } ;
union cvmx_pemx_cfg_rd {TYPE_1__ s; void* u64; } ;
typedef  void* uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OCTEON_FEATURE_NPEI ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC5(int pcie_port, uint32_t cfg_offset)
{
	if (FUNC4(OCTEON_FEATURE_NPEI)) {
		union cvmx_pescx_cfg_rd pescx_cfg_rd;
		pescx_cfg_rd.u64 = 0;
		pescx_cfg_rd.s.addr = cfg_offset;
		FUNC3(FUNC1(pcie_port), pescx_cfg_rd.u64);
		pescx_cfg_rd.u64 = FUNC2(FUNC1(pcie_port));
		return pescx_cfg_rd.s.data;
	} else {
		union cvmx_pemx_cfg_rd pemx_cfg_rd;
		pemx_cfg_rd.u64 = 0;
		pemx_cfg_rd.s.addr = cfg_offset;
		FUNC3(FUNC0(pcie_port), pemx_cfg_rd.u64);
		pemx_cfg_rd.u64 = FUNC2(FUNC0(pcie_port));
		return pemx_cfg_rd.s.data;
	}
}