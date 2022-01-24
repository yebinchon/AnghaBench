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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD ; 
 int /*<<< orphan*/  GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ filter_opts ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3(void)
{
	FUNC0("crlf.git");
	FUNC1(FUNC2(&g_repo, "crlf.git"));

	filter_opts.flags |= GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES;
	filter_opts.flags |= GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD;
}