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
typedef  int /*<<< orphan*/  git_submodule_recurse_t ;
struct TYPE_4__ {int /*<<< orphan*/  fetch_recurse; } ;
typedef  TYPE_1__ git_submodule ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

git_submodule_recurse_t FUNC1(
	git_submodule *submodule)
{
	FUNC0(submodule);
	return submodule->fetch_recurse;
}