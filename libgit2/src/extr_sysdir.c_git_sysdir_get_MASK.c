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
typedef  size_t git_sysdir_t ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**) ; 
 TYPE_1__* git_sysdir__dirs ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

int FUNC3(const git_buf **out, git_sysdir_t which)
{
	FUNC1(out);

	*out = NULL;

	FUNC0(FUNC2(which));

	*out = &git_sysdir__dirs[which].buf;
	return 0;
}