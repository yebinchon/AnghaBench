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
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct hmac_ctx {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int FUNC0 (struct shash_desc*,void const*) ; 
 struct hmac_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 struct shash_desc* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *pdesc, const void *in)
{
	struct shash_desc *desc = FUNC2(pdesc);
	struct hmac_ctx *ctx = FUNC1(pdesc->tfm);

	desc->tfm = ctx->hash;

	return FUNC0(desc, in);
}