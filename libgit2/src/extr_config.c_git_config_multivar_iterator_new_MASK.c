#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  next; int /*<<< orphan*/  free; } ;
struct TYPE_11__ {int have_regex; TYPE_1__ parent; TYPE_3__* iter; int /*<<< orphan*/  regex; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ multivar_iter ;
struct TYPE_12__ {int /*<<< orphan*/  (* free ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ git_config_iterator ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__**,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  multivar_iter_free ; 
 int /*<<< orphan*/  multivar_iter_next ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

int FUNC7(git_config_iterator **out, const git_config *cfg, const char *name, const char *regexp)
{
	multivar_iter *iter = NULL;
	git_config_iterator *inner = NULL;
	int error;

	if ((error = FUNC4(&inner, cfg)) < 0)
		return error;

	iter = FUNC1(1, sizeof(multivar_iter));
	FUNC0(iter);

	if ((error = FUNC3(name, &iter->name)) < 0)
		goto on_error;

	if (regexp != NULL) {
		if ((error = FUNC5(&iter->regex, regexp, 0)) < 0)
			goto on_error;

		iter->have_regex = 1;
	}

	iter->iter = inner;
	iter->parent.free = multivar_iter_free;
	iter->parent.next = multivar_iter_next;

	*out = (git_config_iterator *) iter;

	return 0;

on_error:

	inner->free(inner);
	FUNC2(iter);
	return error;
}