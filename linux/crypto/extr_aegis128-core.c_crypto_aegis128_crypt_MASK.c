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
typedef  union aegis_block {int dummy; } aegis_block ;
struct crypto_aead {int dummy; } ;
struct aegis_state {int dummy; } ;
struct aegis_ctx {int /*<<< orphan*/  key; } ;
struct aegis128_ops {int dummy; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  src; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 struct aegis_ctx* FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aegis_state*,union aegis_block*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct aegis_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aegis_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aegis_state*,struct aead_request*,struct aegis128_ops const*) ; 

__attribute__((used)) static void FUNC6(struct aead_request *req,
				  union aegis_block *tag_xor,
				  unsigned int cryptlen,
				  const struct aegis128_ops *ops)
{
	struct crypto_aead *tfm = FUNC1(req);
	struct aegis_ctx *ctx = FUNC0(tfm);
	struct aegis_state state;

	FUNC3(&state, &ctx->key, req->iv);
	FUNC4(&state, req->src, req->assoclen);
	FUNC5(&state, req, ops);
	FUNC2(&state, tag_xor, req->assoclen, cryptlen);
}