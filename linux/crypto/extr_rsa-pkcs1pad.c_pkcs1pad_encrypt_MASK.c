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
struct pkcs1pad_request {int* in_buf; int /*<<< orphan*/  child_req; int /*<<< orphan*/  in_sg; } ;
struct pkcs1pad_ctx {int key_size; int /*<<< orphan*/  child; } ;
struct crypto_akcipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct akcipher_request {int src_len; int dst_len; int /*<<< orphan*/  dst; TYPE_1__ base; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pkcs1pad_request* FUNC0 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pkcs1pad_ctx* FUNC4 (struct crypto_akcipher*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct crypto_akcipher* FUNC6 (struct akcipher_request*) ; 
 int* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct akcipher_request*,int) ; 
 int /*<<< orphan*/  pkcs1pad_encrypt_sign_complete_cb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct akcipher_request *req)
{
	struct crypto_akcipher *tfm = FUNC6(req);
	struct pkcs1pad_ctx *ctx = FUNC4(tfm);
	struct pkcs1pad_request *req_ctx = FUNC0(req);
	int err;
	unsigned int i, ps_end;

	if (!ctx->key_size)
		return -EINVAL;

	if (req->src_len > ctx->key_size - 11)
		return -EOVERFLOW;

	if (req->dst_len < ctx->key_size) {
		req->dst_len = ctx->key_size;
		return -EOVERFLOW;
	}

	req_ctx->in_buf = FUNC7(ctx->key_size - 1 - req->src_len,
				  GFP_KERNEL);
	if (!req_ctx->in_buf)
		return -ENOMEM;

	ps_end = ctx->key_size - req->src_len - 2;
	req_ctx->in_buf[0] = 0x02;
	for (i = 1; i < ps_end; i++)
		req_ctx->in_buf[i] = 1 + FUNC10(255);
	req_ctx->in_buf[ps_end] = 0x00;

	FUNC9(req_ctx->in_sg, req_ctx->in_buf,
			ctx->key_size - 1 - req->src_len, req->src);

	FUNC3(&req_ctx->child_req, ctx->child);
	FUNC1(&req_ctx->child_req, req->base.flags,
			pkcs1pad_encrypt_sign_complete_cb, req);

	/* Reuse output buffer */
	FUNC2(&req_ctx->child_req, req_ctx->in_sg,
				   req->dst, ctx->key_size - 1, req->dst_len);

	err = FUNC5(&req_ctx->child_req);
	if (err != -EINPROGRESS && err != -EBUSY)
		return FUNC8(req, err);

	return err;
}