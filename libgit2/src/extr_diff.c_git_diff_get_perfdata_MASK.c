#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  oid_calculations; int /*<<< orphan*/  stat_calls; } ;
typedef  TYPE_2__ git_diff_perfdata ;
struct TYPE_8__ {int /*<<< orphan*/  oid_calculations; int /*<<< orphan*/  stat_calls; } ;
struct TYPE_10__ {TYPE_1__ perf; } ;
typedef  TYPE_3__ git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_PERFDATA_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2(git_diff_perfdata *out, const git_diff *diff)
{
	FUNC1(out);
	FUNC0(out, GIT_DIFF_PERFDATA_VERSION, "git_diff_perfdata");
	out->stat_calls = diff->perf.stat_calls;
	out->oid_calculations = diff->perf.oid_calculations;
	return 0;
}