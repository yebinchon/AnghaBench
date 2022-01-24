#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_writestream ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {TYPE_1__ source; } ;
typedef  TYPE_2__ git_filter_list ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(
	git_filter_list *filters,
	git_blob *blob,
	git_writestream *target)
{
	git_buf in = GIT_BUF_INIT;

	if (FUNC0(&in, blob) < 0)
		return -1;

	if (filters)
		FUNC3(&filters->source.oid, FUNC1(blob));

	return FUNC2(filters, &in, target);
}