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
typedef  int u64 ;
struct TYPE_5__ {int ndigits; int /*<<< orphan*/  x; } ;
struct ecrdsa_ctx {int digest_len; TYPE_3__* curve; TYPE_2__ pub_key; int /*<<< orphan*/  digest; } ;
struct ecc_point {int* x; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_request {int dst_len; int src_len; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  sig ;
typedef  int /*<<< orphan*/  digest ;
struct TYPE_4__ {int ndigits; } ;
struct TYPE_6__ {int* n; TYPE_1__ g; } ;

/* Variables and functions */
 int EBADMSG ; 
 struct ecc_point FUNC0 (int*,int*,unsigned int) ; 
 int ECRDSA_MAX_DIGITS ; 
 int ECRDSA_MAX_SIG_SIZE ; 
 int EKEYREJECTED ; 
 int STREEBOG512_DIGEST_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 struct ecrdsa_ctx* FUNC2 (struct crypto_akcipher*) ; 
 struct crypto_akcipher* FUNC3 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecc_point*,int*,TYPE_1__*,int*,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int FUNC8 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int*,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC11 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,int*,unsigned int) ; 

__attribute__((used)) static int FUNC15(struct akcipher_request *req)
{
	struct crypto_akcipher *tfm = FUNC3(req);
	struct ecrdsa_ctx *ctx = FUNC2(tfm);
	unsigned char sig[ECRDSA_MAX_SIG_SIZE];
	unsigned char digest[STREEBOG512_DIGEST_SIZE];
	unsigned int ndigits = req->dst_len / sizeof(u64);
	u64 r[ECRDSA_MAX_DIGITS]; /* witness (r) */
	u64 _r[ECRDSA_MAX_DIGITS]; /* -r */
	u64 s[ECRDSA_MAX_DIGITS]; /* second part of sig (s) */
	u64 e[ECRDSA_MAX_DIGITS]; /* h \mod q */
	u64 *v = e;		  /* e^{-1} \mod q */
	u64 z1[ECRDSA_MAX_DIGITS];
	u64 *z2 = _r;
	struct ecc_point cc = FUNC0(s, e, ndigits); /* reuse s, e */

	/*
	 * Digest value, digest algorithm, and curve (modulus) should have the
	 * same length (256 or 512 bits), public key and signature should be
	 * twice bigger.
	 */
	if (!ctx->curve ||
	    !ctx->digest ||
	    !req->src ||
	    !ctx->pub_key.x ||
	    req->dst_len != ctx->digest_len ||
	    req->dst_len != ctx->curve->g.ndigits * sizeof(u64) ||
	    ctx->pub_key.ndigits != ctx->curve->g.ndigits ||
	    req->dst_len * 2 != req->src_len ||
	    FUNC1(req->src_len > sizeof(sig)) ||
	    FUNC1(req->dst_len > sizeof(digest)))
		return -EBADMSG;

	FUNC5(req->src, FUNC6(req->src, req->src_len),
			  sig, req->src_len);
	FUNC7(req->src,
			   FUNC6(req->src,
					    req->src_len + req->dst_len),
			   digest, req->dst_len, req->src_len);

	FUNC9(s, sig, ndigits);
	FUNC9(r, sig + ndigits * sizeof(u64), ndigits);

	/* Step 1: verify that 0 < r < q, 0 < s < q */
	if (FUNC11(r, ndigits) ||
	    FUNC8(r, ctx->curve->n, ndigits) == 1 ||
	    FUNC11(s, ndigits) ||
	    FUNC8(s, ctx->curve->n, ndigits) == 1)
		return -EKEYREJECTED;

	/* Step 2: calculate hash (h) of the message (passed as input) */
	/* Step 3: calculate e = h \mod q */
	FUNC10(e, digest, ndigits);
	if (FUNC8(e, ctx->curve->n, ndigits) == 1)
		FUNC14(e, e, ctx->curve->n, ndigits);
	if (FUNC11(e, ndigits))
		e[0] = 1;

	/* Step 4: calculate v = e^{-1} \mod q */
	FUNC12(v, e, ctx->curve->n, ndigits);

	/* Step 5: calculate z_1 = sv \mod q, z_2 = -rv \mod q */
	FUNC13(z1, s, v, ctx->curve->n, ndigits);
	FUNC14(_r, ctx->curve->n, r, ndigits);
	FUNC13(z2, _r, v, ctx->curve->n, ndigits);

	/* Step 6: calculate point C = z_1P + z_2Q, and R = x_c \mod q */
	FUNC4(&cc, z1, &ctx->curve->g, z2, &ctx->pub_key,
			      ctx->curve);
	if (FUNC8(cc.x, ctx->curve->n, ndigits) == 1)
		FUNC14(cc.x, cc.x, ctx->curve->n, ndigits);

	/* Step 7: if R == r signature is valid */
	if (!FUNC8(cc.x, r, ndigits))
		return 0;
	else
		return -EKEYREJECTED;
}