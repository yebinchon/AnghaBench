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

/* Variables and functions */
 int /*<<< orphan*/  GIT_STATUS_SHOW_INDEX_AND_WORKDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  entry_count0 ; 
 int /*<<< orphan*/  entry_paths0 ; 
 int /*<<< orphan*/  entry_statuses0 ; 

void FUNC2(void)
{
	FUNC0(entry_count0, entry_paths0, entry_statuses0,
		FUNC1("status"), GIT_STATUS_SHOW_INDEX_AND_WORKDIR, 0);
}