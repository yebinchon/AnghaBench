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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_OK ; 
 scalar_t__ SRC_XTALCR ; 
 int /*<<< orphan*/  SRC_XTALCR_MXTALEN ; 
 int /*<<< orphan*/  SRC_XTALCR_MXTALOVER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ src_base ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *this,
				unsigned long code,
				void *unused)
{
	u32 val;

	/* The main chrystal need to be enabled for reboot to work */
	val = FUNC1(src_base + SRC_XTALCR);
	val &= ~SRC_XTALCR_MXTALOVER;
	val |= SRC_XTALCR_MXTALEN;
	FUNC0("force-enabling MXTALO\n");
	FUNC2(val, src_base + SRC_XTALCR);
	return NOTIFY_OK;
}