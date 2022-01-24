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
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_oid ;
struct TYPE_7__ {int /*<<< orphan*/  c; } ;
typedef  TYPE_2__ git_hash_sha1_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_SHA1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(git_oid *out, git_hash_sha1_ctx *ctx)
{
	FUNC1(ctx);

	if (FUNC0(out->id, &ctx->c) != 1) {
		FUNC2(GIT_ERROR_SHA1, "hash_openssl: failed to finalize hash");
		return -1;
	}

	return 0;
}