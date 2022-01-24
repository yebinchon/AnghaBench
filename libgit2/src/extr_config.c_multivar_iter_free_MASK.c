#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  regex; scalar_t__ have_regex; struct TYPE_4__* name; TYPE_2__* iter; } ;
typedef  TYPE_1__ multivar_iter ;
typedef  int /*<<< orphan*/  git_config_iterator ;
struct TYPE_5__ {int /*<<< orphan*/  (* free ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(git_config_iterator *_iter)
{
	multivar_iter *iter = (multivar_iter *) _iter;

	iter->iter->free(iter->iter);

	FUNC0(iter->name);
	if (iter->have_regex)
		FUNC1(&iter->regex);
	FUNC0(iter);
}