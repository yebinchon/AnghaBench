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
struct eeh_pe {int /*<<< orphan*/  data; int /*<<< orphan*/  phb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_EARLY_DUMP_LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct eeh_pe *pe, int severity,
			   char *drv_log, unsigned long len)
{
	if (!FUNC0(EEH_EARLY_DUMP_LOG))
		FUNC1(pe->phb, pe->data);

	return 0;
}