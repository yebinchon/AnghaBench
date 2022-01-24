#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uv_systab {int dummy; } ;
struct TYPE_4__ {scalar_t__ revision; int size; int /*<<< orphan*/  signature; } ;

/* Variables and functions */
 scalar_t__ EFI_INVALID_TABLE_ADDR ; 
 int /*<<< orphan*/  UV_SYSTAB_SIG ; 
 scalar_t__ UV_SYSTAB_VERSION_UV4 ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* uv_systab ; 
 scalar_t__ uv_systab_phys ; 

void FUNC7(void)
{
	uv_systab = NULL;
	if ((uv_systab_phys == EFI_INVALID_TABLE_ADDR) ||
	    !uv_systab_phys || FUNC0()) {
		FUNC3("UV: UVsystab: missing\n");
		return;
	}

	uv_systab = FUNC1(uv_systab_phys, sizeof(struct uv_systab));
	if (!uv_systab || FUNC6(uv_systab->signature, UV_SYSTAB_SIG, 4)) {
		FUNC4("UV: UVsystab: bad signature!\n");
		FUNC2(uv_systab);
		return;
	}

	/* Starting with UV4 the UV systab size is variable */
	if (uv_systab->revision >= UV_SYSTAB_VERSION_UV4) {
		int size = uv_systab->size;

		FUNC2(uv_systab);
		uv_systab = FUNC1(uv_systab_phys, size);
		if (!uv_systab) {
			FUNC4("UV: UVsystab: ioremap(%d) failed!\n", size);
			return;
		}
	}
	FUNC5("UV: UVsystab: Revision:%x\n", uv_systab->revision);
}