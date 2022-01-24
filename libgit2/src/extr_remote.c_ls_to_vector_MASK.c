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
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_remote_head ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const***,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote_head_cmp ; 

__attribute__((used)) static int FUNC3(git_vector *out, git_remote *remote)
{
	git_remote_head **heads;
	size_t heads_len, i;

	if (FUNC0((const git_remote_head ***)&heads, &heads_len, remote) < 0)
		return -1;

	if (FUNC1(out, heads_len, remote_head_cmp) < 0)
		return -1;

	for (i = 0; i < heads_len; i++) {
		if (FUNC2(out, heads[i]) < 0)
			return -1;
	}

	return 0;
}