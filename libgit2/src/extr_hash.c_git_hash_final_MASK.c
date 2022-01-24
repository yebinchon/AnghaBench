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
struct TYPE_3__ {int algo; int /*<<< orphan*/  sha1; } ;
typedef  TYPE_1__ git_hash_ctx ;

/* Variables and functions */
#define  GIT_HASH_ALGO_SHA1 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(git_oid *out, git_hash_ctx *ctx)
{
	switch (ctx->algo) {
		case GIT_HASH_ALGO_SHA1:
			return FUNC1(out, &ctx->sha1);
		default:
			FUNC0(0);
			return -1;
	}
}