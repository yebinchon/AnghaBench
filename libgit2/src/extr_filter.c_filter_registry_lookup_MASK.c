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
typedef  int /*<<< orphan*/  git_filter_def ;
struct TYPE_2__ {int /*<<< orphan*/  filters; } ;

/* Variables and functions */
 TYPE_1__ filter_registry ; 
 int /*<<< orphan*/  FUNC0 (size_t*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static git_filter_def *FUNC2(size_t *pos, const char *name)
{
	git_filter_def *fdef = NULL;

	if (!FUNC0(pos, name))
		fdef = FUNC1(&filter_registry.filters, *pos);

	return fdef;
}