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
struct shash_desc {int dummy; } ;
struct sha3_state {int /*<<< orphan*/  buf; int /*<<< orphan*/  st; int /*<<< orphan*/  rsiz; } ;
struct s390_sha_ctx {int /*<<< orphan*/  func; int /*<<< orphan*/  buf; int /*<<< orphan*/  state; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPACF_KIMD_SHA3_256 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct s390_sha_ctx* FUNC1 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc, const void *in)
{
	struct s390_sha_ctx *sctx = FUNC1(desc);
	const struct sha3_state *ictx = in;

	sctx->count = ictx->rsiz;
	FUNC0(sctx->state, ictx->st, sizeof(ictx->st));
	FUNC0(sctx->buf, ictx->buf, sizeof(ictx->buf));
	sctx->func = CPACF_KIMD_SHA3_256;

	return 0;
}