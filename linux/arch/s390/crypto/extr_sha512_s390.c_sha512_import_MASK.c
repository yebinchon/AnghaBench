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
struct sha512_state {int /*<<< orphan*/  buf; int /*<<< orphan*/  state; int /*<<< orphan*/ * count; } ;
struct s390_sha_ctx {int /*<<< orphan*/  func; int /*<<< orphan*/  buf; int /*<<< orphan*/  state; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPACF_KIMD_SHA_512 ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct s390_sha_ctx* FUNC1 (struct shash_desc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const void *in)
{
	struct s390_sha_ctx *sctx = FUNC1(desc);
	const struct sha512_state *ictx = in;

	if (FUNC2(ictx->count[1]))
		return -ERANGE;
	sctx->count = ictx->count[0];

	FUNC0(sctx->state, ictx->state, sizeof(ictx->state));
	FUNC0(sctx->buf, ictx->buf, sizeof(ictx->buf));
	sctx->func = CPACF_KIMD_SHA_512;
	return 0;
}