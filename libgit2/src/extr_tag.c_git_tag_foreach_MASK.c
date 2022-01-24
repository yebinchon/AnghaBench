#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * repo; void* cb_data; scalar_t__ cb; } ;
typedef  TYPE_1__ tag_cb_data ;
typedef  scalar_t__ git_tag_foreach_cb ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  tags_cb ; 

int FUNC2(git_repository *repo, git_tag_foreach_cb cb, void *cb_data)
{
	tag_cb_data data;

	FUNC0(repo && cb);

	data.cb = cb;
	data.cb_data = cb_data;
	data.repo = repo;

	return FUNC1(repo, &tags_cb, &data);
}