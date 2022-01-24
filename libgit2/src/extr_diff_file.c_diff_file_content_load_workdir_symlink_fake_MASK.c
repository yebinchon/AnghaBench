#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; TYPE_1__ map; } ;
typedef  TYPE_2__ git_diff_file_content ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__FREE_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	git_diff_file_content *fc, git_buf *path)
{
	git_buf target = GIT_BUF_INIT;
	int error;

	if ((error = FUNC3(&target, path->ptr)) < 0)
		return error;

	fc->map.len = FUNC2(&target);
	fc->map.data = FUNC0(&target);
	fc->flags |= GIT_DIFF_FLAG__FREE_DATA;

	FUNC1(&target);
	return error;
}