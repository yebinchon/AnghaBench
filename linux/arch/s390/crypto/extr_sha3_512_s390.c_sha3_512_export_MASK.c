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
struct sha3_state {int rsiz; int rsizw; int /*<<< orphan*/  buf; int /*<<< orphan*/  st; } ;
struct s390_sha_ctx {int count; int /*<<< orphan*/  buf; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct s390_sha_ctx* FUNC1 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc, void *out)
{
	struct s390_sha_ctx *sctx = FUNC1(desc);
	struct sha3_state *octx = out;

	octx->rsiz = sctx->count;
	octx->rsizw = sctx->count >> 32;

	FUNC0(octx->st, sctx->state, sizeof(octx->st));
	FUNC0(octx->buf, sctx->buf, sizeof(octx->buf));

	return 0;
}