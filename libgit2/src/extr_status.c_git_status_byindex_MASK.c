#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  paired; } ;
typedef  TYPE_1__ git_status_list ;
typedef  int /*<<< orphan*/  git_status_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *,size_t) ; 

const git_status_entry *FUNC2(git_status_list *status, size_t i)
{
	FUNC0(status);

	return FUNC1(&status->paired, i);
}