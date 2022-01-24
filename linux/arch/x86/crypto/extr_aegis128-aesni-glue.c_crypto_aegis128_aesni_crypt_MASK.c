#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct skcipher_walk {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aegis_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bytes; } ;
struct aegis_ctx {TYPE_1__ key; } ;
struct aegis_crypt_ops {int /*<<< orphan*/  (* skcipher_walk_init ) (struct skcipher_walk*,struct aead_request*,int) ;} ;
struct aegis_block {int dummy; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  src; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 struct crypto_aead* FUNC0 (struct aead_request*) ; 
 struct aegis_ctx* FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct aegis_state*,struct aegis_block*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct aegis_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aegis_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aegis_state*,struct skcipher_walk*,struct aegis_crypt_ops const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_walk*,struct aead_request*,int) ; 

__attribute__((used)) static void FUNC9(struct aead_request *req,
					struct aegis_block *tag_xor,
					unsigned int cryptlen,
					const struct aegis_crypt_ops *ops)
{
	struct crypto_aead *tfm = FUNC0(req);
	struct aegis_ctx *ctx = FUNC1(tfm);
	struct skcipher_walk walk;
	struct aegis_state state;

	ops->skcipher_walk_init(&walk, req, true);

	FUNC6();

	FUNC3(&state, ctx->key.bytes, req->iv);
	FUNC4(&state, req->src, req->assoclen);
	FUNC5(&state, &walk, ops);
	FUNC2(&state, tag_xor, req->assoclen, cryptlen);

	FUNC7();
}