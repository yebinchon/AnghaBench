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
struct TYPE_5__ {char* data; scalar_t__ len; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/ * blob; TYPE_2__ map; } ;
typedef  TYPE_1__ git_diff_file_content ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int GIT_DIFF_FLAG__FREE_BLOB ; 
 int GIT_DIFF_FLAG__FREE_DATA ; 
 int GIT_DIFF_FLAG__LOADED ; 
 int GIT_DIFF_FLAG__UNMAP_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(git_diff_file_content *fc)
{
	if ((fc->flags & GIT_DIFF_FLAG__LOADED) == 0)
		return;

	if (fc->flags & GIT_DIFF_FLAG__FREE_DATA) {
		FUNC0(fc->map.data);
		fc->map.data = "";
		fc->map.len  = 0;
		fc->flags &= ~GIT_DIFF_FLAG__FREE_DATA;
	}
	else if (fc->flags & GIT_DIFF_FLAG__UNMAP_DATA) {
		FUNC2(&fc->map);
		fc->map.data = "";
		fc->map.len  = 0;
		fc->flags &= ~GIT_DIFF_FLAG__UNMAP_DATA;
	}

	if (fc->flags & GIT_DIFF_FLAG__FREE_BLOB) {
		FUNC1((git_blob *)fc->blob);
		fc->blob = NULL;
		fc->flags &= ~GIT_DIFF_FLAG__FREE_BLOB;
	}

	fc->flags &= ~GIT_DIFF_FLAG__LOADED;
}