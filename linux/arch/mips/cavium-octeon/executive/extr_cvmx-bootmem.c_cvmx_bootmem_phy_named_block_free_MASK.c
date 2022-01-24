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
typedef  int /*<<< orphan*/  uint32_t ;
struct cvmx_bootmem_named_block_desc {scalar_t__ size; scalar_t__ base_addr; } ;
struct TYPE_2__ {int major_version; scalar_t__ minor_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_BOOTMEM_FLAG_NO_LOCKING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* cvmx_bootmem_desc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct cvmx_bootmem_named_block_desc* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(char *name, uint32_t flags)
{
	struct cvmx_bootmem_named_block_desc *named_block_ptr;

	if (cvmx_bootmem_desc->major_version != 3) {
		FUNC4("ERROR: Incompatible bootmem descriptor version: "
			     "%d.%d at addr: %p\n",
			     (int)cvmx_bootmem_desc->major_version,
			     (int)cvmx_bootmem_desc->minor_version,
			     cvmx_bootmem_desc);
		return 0;
	}
#ifdef DEBUG
	cvmx_dprintf("cvmx_bootmem_phy_named_block_free: %s\n", name);
#endif

	/*
	 * Take lock here, as name lookup/block free/name free need to
	 * be atomic.
	 */
	FUNC1();

	named_block_ptr =
	    FUNC2(name,
					      CVMX_BOOTMEM_FLAG_NO_LOCKING);
	if (named_block_ptr) {
#ifdef DEBUG
		cvmx_dprintf("cvmx_bootmem_phy_named_block_free: "
			     "%s, base: 0x%llx, size: 0x%llx\n",
			     name,
			     (unsigned long long)named_block_ptr->base_addr,
			     (unsigned long long)named_block_ptr->size);
#endif
		FUNC0(named_block_ptr->base_addr,
					named_block_ptr->size,
					CVMX_BOOTMEM_FLAG_NO_LOCKING);
		named_block_ptr->size = 0;
		/* Set size to zero to indicate block not used. */
	}

	FUNC3();
	return named_block_ptr != NULL; /* 0 on failure, 1 on success */
}