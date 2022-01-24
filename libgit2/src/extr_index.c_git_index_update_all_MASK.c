#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_strarray ;
typedef  int /*<<< orphan*/  git_index_matched_path_cb ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  INDEX_ACTION_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int FUNC2(
	git_index *index,
	const git_strarray *pathspec,
	git_index_matched_path_cb cb,
	void *payload)
{
	int error = FUNC1(index, INDEX_ACTION_UPDATE, pathspec, 0, cb, payload);
	if (error) /* make sure error is set if callback stopped iteration */
		FUNC0(error);

	return error;
}