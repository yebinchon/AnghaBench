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
struct rsa_asn1_template {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {unsigned int dst_len; } ;
struct pkcs1pad_request {int* out_buf; TYPE_1__ child_req; } ;
struct pkcs1pad_inst_ctx {struct rsa_asn1_template* digest_info; } ;
struct pkcs1pad_ctx {int key_size; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_request {unsigned int dst_len; scalar_t__ src_len; int /*<<< orphan*/  src; } ;
struct akcipher_instance {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int EKEYREJECTED ; 
 struct akcipher_instance* FUNC0 (struct crypto_akcipher*) ; 
 struct pkcs1pad_inst_ctx* FUNC1 (struct akcipher_instance*) ; 
 struct pkcs1pad_request* FUNC2 (struct akcipher_request*) ; 
 struct pkcs1pad_ctx* FUNC3 (struct crypto_akcipher*) ; 
 struct crypto_akcipher* FUNC4 (struct akcipher_request*) ; 
 scalar_t__ FUNC5 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,unsigned int,int) ; 

__attribute__((used)) static int FUNC10(struct akcipher_request *req, int err)
{
	struct crypto_akcipher *tfm = FUNC4(req);
	struct pkcs1pad_ctx *ctx = FUNC3(tfm);
	struct pkcs1pad_request *req_ctx = FUNC2(req);
	struct akcipher_instance *inst = FUNC0(tfm);
	struct pkcs1pad_inst_ctx *ictx = FUNC1(inst);
	const struct rsa_asn1_template *digest_info = ictx->digest_info;
	unsigned int dst_len;
	unsigned int pos;
	u8 *out_buf;

	if (err)
		goto done;

	err = -EINVAL;
	dst_len = req_ctx->child_req.dst_len;
	if (dst_len < ctx->key_size - 1)
		goto done;

	out_buf = req_ctx->out_buf;
	if (dst_len == ctx->key_size) {
		if (out_buf[0] != 0x00)
			/* Decrypted value had no leading 0 byte */
			goto done;

		dst_len--;
		out_buf++;
	}

	err = -EBADMSG;
	if (out_buf[0] != 0x01)
		goto done;

	for (pos = 1; pos < dst_len; pos++)
		if (out_buf[pos] != 0xff)
			break;

	if (pos < 9 || pos == dst_len || out_buf[pos] != 0x00)
		goto done;
	pos++;

	if (digest_info) {
		if (FUNC5(out_buf + pos, digest_info->data,
				  digest_info->size))
			goto done;

		pos += digest_info->size;
	}

	err = 0;

	if (req->dst_len != dst_len - pos) {
		err = -EKEYREJECTED;
		req->dst_len = dst_len - pos;
		goto done;
	}
	/* Extract appended digest. */
	FUNC9(req->src,
			   FUNC8(req->src,
					    req->src_len + req->dst_len),
			   req_ctx->out_buf + ctx->key_size,
			   req->dst_len, ctx->key_size);
	/* Do the actual verification step. */
	if (FUNC7(req_ctx->out_buf + ctx->key_size, out_buf + pos,
		   req->dst_len) != 0)
		err = -EKEYREJECTED;
done:
	FUNC6(req_ctx->out_buf);

	return err;
}