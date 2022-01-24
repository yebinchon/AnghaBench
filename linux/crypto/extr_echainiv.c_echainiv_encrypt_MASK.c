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
typedef  int u8 ;
typedef  int u64 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct aead_request {unsigned int cryptlen; int* iv; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; TYPE_1__ base; int /*<<< orphan*/  src; } ;
struct aead_geniv_ctx {int* salt; int /*<<< orphan*/  sknull; int /*<<< orphan*/  child; } ;
typedef  int __be64 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aead_request* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 struct aead_geniv_ctx* FUNC7 (struct crypto_aead*) ; 
 int FUNC8 (struct aead_request*) ; 
 unsigned int FUNC9 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC10 (struct aead_request*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  nreq ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct aead_request *req)
{
	struct crypto_aead *geniv = FUNC10(req);
	struct aead_geniv_ctx *ctx = FUNC7(geniv);
	struct aead_request *subreq = FUNC1(req);
	__be64 nseqno;
	u64 seqno;
	u8 *info;
	unsigned int ivsize = FUNC9(geniv);
	int err;

	if (req->cryptlen < ivsize)
		return -EINVAL;

	FUNC5(subreq, ctx->child);

	info = req->iv;

	if (req->src != req->dst) {
		FUNC0(nreq, ctx->sknull);

		FUNC17(nreq, ctx->sknull);
		FUNC15(nreq, req->base.flags,
					      NULL, NULL);
		FUNC16(nreq, req->src, req->dst,
					   req->assoclen + req->cryptlen,
					   NULL);

		err = FUNC11(nreq);
		if (err)
			return err;
	}

	FUNC3(subreq, req->base.flags,
				  req->base.complete, req->base.data);
	FUNC4(subreq, req->dst, req->dst,
			       req->cryptlen, info);
	FUNC2(subreq, req->assoclen);

	FUNC12(&nseqno, info + ivsize - 8, 8);
	seqno = FUNC6(nseqno);
	FUNC13(info, 0, ivsize);

	FUNC14(info, req->dst, req->assoclen, ivsize, 1);

	do {
		u64 a;

		FUNC12(&a, ctx->salt + ivsize - 8, 8);

		a |= 1;
		a *= seqno;

		FUNC12(info + ivsize - 8, &a, 8);
	} while ((ivsize -= 8));

	return FUNC8(subreq);
}