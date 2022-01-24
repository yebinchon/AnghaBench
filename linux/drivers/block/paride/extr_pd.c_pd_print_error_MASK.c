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
struct pd_unit {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pd_errs ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct pd_unit *disk, char *msg, int status)
{
	int i;

	FUNC1("%s: %s: status = 0x%x =", disk->name, msg, status);
	for (i = 0; i < FUNC0(pd_errs); i++)
		if (status & (1 << i))
			FUNC1(" %s", pd_errs[i]);
	FUNC1("\n");
}