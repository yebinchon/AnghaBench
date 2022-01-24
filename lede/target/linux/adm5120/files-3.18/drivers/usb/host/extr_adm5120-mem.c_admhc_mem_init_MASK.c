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
struct td {int dummy; } ;
struct ed {int dummy; } ;
struct admhcd {int /*<<< orphan*/ * td_cache; void* ed_cache; } ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 int /*<<< orphan*/  ED_ALIGN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TD_ALIGN ; 
 TYPE_2__* FUNC0 (struct admhcd*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct admhcd *ahcd)
{
	ahcd->td_cache = FUNC1("admhc_td",
		FUNC0(ahcd)->self.controller,
		sizeof(struct td),
		TD_ALIGN, /* byte alignment */
		0 /* no page-crossing issues */
		);
	if (!ahcd->td_cache)
		goto err;

	ahcd->ed_cache = FUNC1("admhc_ed",
		FUNC0(ahcd)->self.controller,
		sizeof(struct ed),
		ED_ALIGN, /* byte alignment */
		0 /* no page-crossing issues */
		);
	if (!ahcd->ed_cache)
		goto err_td_cache;

	return 0;

err_td_cache:
	FUNC2(ahcd->td_cache);
	ahcd->td_cache = NULL;
err:
	return -ENOMEM;
}