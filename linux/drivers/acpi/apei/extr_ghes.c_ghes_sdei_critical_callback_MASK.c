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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int dummy; } ;
struct ghes {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_RAW_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FIX_APEI_GHES_SDEI_CRITICAL ; 
 int FUNC0 (struct ghes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(u32 event_num, struct pt_regs *regs,
				       void *arg)
{
	static DEFINE_RAW_SPINLOCK(ghes_notify_lock_sdei_critical);
	struct ghes *ghes = arg;
	int err;

	FUNC1(&ghes_notify_lock_sdei_critical);
	err = FUNC0(ghes, FIX_APEI_GHES_SDEI_CRITICAL);
	FUNC2(&ghes_notify_lock_sdei_critical);

	return err;
}