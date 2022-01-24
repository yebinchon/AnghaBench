#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index_reuc_entry ;
struct TYPE_7__ {int /*<<< orphan*/  length; } ;
struct TYPE_6__ {TYPE_2__ reuc; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t*,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  const* FUNC2 (TYPE_2__*,size_t) ; 
 int FUNC3 (TYPE_2__*) ; 

const git_index_reuc_entry *FUNC4(
	git_index *index, const char *path)
{
	size_t pos;
	FUNC0(index && path);

	if (!index->reuc.length)
		return NULL;

	FUNC0(FUNC3(&index->reuc));

	if (FUNC1(&pos, index, path) < 0)
		return NULL;

	return FUNC2(&index->reuc, pos);
}