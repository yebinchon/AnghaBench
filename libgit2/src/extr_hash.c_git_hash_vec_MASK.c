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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ git_buf_vec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(git_oid *out, git_buf_vec *vec, size_t n)
{
	git_hash_ctx ctx;
	size_t i;
	int error = 0;

	if (FUNC1(&ctx) < 0)
		return -1;

	for (i = 0; i < n; i++) {
		if ((error = FUNC3(&ctx, vec[i].data, vec[i].len)) < 0)
			goto done;
	}

	error = FUNC2(out, &ctx);

done:
	FUNC0(&ctx);

	return error;
}