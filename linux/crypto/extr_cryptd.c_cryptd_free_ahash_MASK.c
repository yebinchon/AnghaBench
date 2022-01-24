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
struct cryptd_hash_ctx {int /*<<< orphan*/  refcnt; } ;
struct cryptd_ahash {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct cryptd_hash_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct cryptd_ahash *tfm)
{
	struct cryptd_hash_ctx *ctx = FUNC0(&tfm->base);

	if (FUNC2(&ctx->refcnt))
		FUNC1(&tfm->base);
}