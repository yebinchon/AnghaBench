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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ patch_id; int /*<<< orphan*/  data_code; } ;
struct microcode_amd {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_AMD64_PATCH_LEVEL ; 
 int /*<<< orphan*/  MSR_AMD64_PATCH_LOADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct microcode_amd *mc)
{
	u32 rev, dummy;

	FUNC1(MSR_AMD64_PATCH_LOADER, (u64)(long)&mc->hdr.data_code);

	/* verify patch application was successful */
	FUNC0(MSR_AMD64_PATCH_LEVEL, rev, dummy);
	if (rev != mc->hdr.patch_id)
		return -1;

	return 0;
}