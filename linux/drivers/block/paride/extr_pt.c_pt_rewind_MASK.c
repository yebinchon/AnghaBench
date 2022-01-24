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
struct pt_unit {int dummy; } ;

/* Variables and functions */
 char ATAPI_REWIND ; 
 int /*<<< orphan*/  PT_REWIND_TMO ; 
 int /*<<< orphan*/  FUNC0 (struct pt_unit*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC1(struct pt_unit *tape)
{
	char rw_cmd[12] = { ATAPI_REWIND, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

	FUNC0(tape, PT_REWIND_TMO, rw_cmd, "rewind");
}