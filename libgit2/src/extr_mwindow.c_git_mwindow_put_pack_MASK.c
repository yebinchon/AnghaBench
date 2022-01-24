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
struct git_pack_file {int /*<<< orphan*/  pack_name; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git__mwindow_mutex ; 
 int /*<<< orphan*/  git__pack_cache ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct git_pack_file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct git_pack_file *pack)
{
	int count;

	if (FUNC2(&git__mwindow_mutex) < 0)
		return;

	/* put before get would be a corrupted state */
	FUNC0(git__pack_cache);

	/* if we cannot find it, the state is corrupted */
	FUNC0(FUNC6(git__pack_cache, pack->pack_name));

	count = FUNC1(&pack->refcount);
	if (count == 0) {
		FUNC5(git__pack_cache, pack->pack_name);
		FUNC4(pack);
	}

	FUNC3(&git__mwindow_mutex);
	return;
}