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
typedef  int /*<<< orphan*/  u64 ;
struct pdesc {void* gp; void* addr; } ;
struct ia64_sal_retval {int dummy; } ;
struct ia64_fpreg {int dummy; } ;
typedef  scalar_t__ ia64_sal_handler ;
struct TYPE_3__ {scalar_t__ gp; scalar_t__ esi_proc; int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ ia64_esi_desc_entry_point_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;
struct TYPE_4__ {int entry_count; } ;

/* Variables and functions */
 char ESI_DESC_ENTRY_POINT ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ia64_sal_retval FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* esi_systab ; 
 int /*<<< orphan*/  FUNC3 (struct ia64_fpreg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ia64_fpreg*) ; 
 int /*<<< orphan*/  sal_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7 (efi_guid_t guid, struct ia64_sal_retval *isrvp,
			u64 func, u64 arg1, u64 arg2, u64 arg3, u64 arg4,
			u64 arg5, u64 arg6, u64 arg7)
{
	struct ia64_fpreg fr[6];
	unsigned long flags;
	u64 esi_params[8];
	char *p;
	int i;

	if (!esi_systab)
		return -1;

	p = (char *) (esi_systab + 1);
	for (i = 0; i < esi_systab->entry_count; i++) {
		if (*p == ESI_DESC_ENTRY_POINT) {
			ia64_esi_desc_entry_point_t *esi = (void *)p;
			if (!FUNC1(guid, esi->guid)) {
				ia64_sal_handler esi_proc;
				struct pdesc pdesc;

				pdesc.addr = (void *)esi->esi_proc;
				pdesc.gp = (void *)esi->gp;

				esi_proc = (ia64_sal_handler) &pdesc;

				esi_params[0] = func;
				esi_params[1] = arg1;
				esi_params[2] = arg2;
				esi_params[3] = arg3;
				esi_params[4] = arg4;
				esi_params[5] = arg5;
				esi_params[6] = arg6;
				esi_params[7] = arg7;
				FUNC4(fr);
				FUNC5(&sal_lock, flags);
				*isrvp = FUNC2(esi_proc, esi_params);
				FUNC6(&sal_lock, flags);
				FUNC3(fr);
				return 0;
			}
		}
		p += FUNC0(*p);
	}
	return -1;
}