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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_hash_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 

int FUNC4(git_oid *out, const void *data, size_t len)
{
	git_hash_ctx ctx;
	int error = 0;

	if (FUNC1(&ctx) < 0)
		return -1;

	if ((error = FUNC3(&ctx, data, len)) >= 0)
		error = FUNC2(out, &ctx);

	FUNC0(&ctx);
	
	return error;
}