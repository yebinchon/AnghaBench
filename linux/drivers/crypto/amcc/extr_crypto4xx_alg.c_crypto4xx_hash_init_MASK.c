#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int digest_len; int /*<<< orphan*/  load_hash_state; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct dynamic_sa_ctl {TYPE_3__ sa_command_0; } ;
struct crypto4xx_ctx {struct dynamic_sa_ctl* sa_in; } ;
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_LOAD_HASH_FROM_SA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct crypto4xx_ctx* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct ahash_request *req)
{
	struct crypto4xx_ctx *ctx = FUNC2(req->base.tfm);
	int ds;
	struct dynamic_sa_ctl *sa;

	sa = ctx->sa_in;
	ds = FUNC1(
			FUNC0(req->base.tfm));
	sa->sa_command_0.bf.digest_len = ds >> 2;
	sa->sa_command_0.bf.load_hash_state = SA_LOAD_HASH_FROM_SA;

	return 0;
}