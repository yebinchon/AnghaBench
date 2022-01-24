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
typedef  void u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct crypto_wait {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_testvec {int key_len; int param_len; int algo; char* m; unsigned int m_size; char* c; unsigned int c_size; scalar_t__ siggen_sigver_test; scalar_t__ public_key_vec; int /*<<< orphan*/  params; int /*<<< orphan*/  key; } ;
struct akcipher_request {unsigned int dst_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int XBUFSIZE ; 
 struct akcipher_request* FUNC1 (struct crypto_akcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct akcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int /*<<< orphan*/  FUNC4 (struct akcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct akcipher_request*) ; 
 unsigned int FUNC7 (struct crypto_akcipher*) ; 
 int FUNC8 (struct crypto_akcipher*,void*,int) ; 
 int FUNC9 (struct crypto_akcipher*,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_wait*) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int FUNC13 (int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int /*<<< orphan*/  FUNC14 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 void* FUNC16 (int,int /*<<< orphan*/ ) ; 
 void* FUNC17 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC19 (char const*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC22 (struct scatterlist*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct scatterlist*,char*,unsigned int) ; 
 void* FUNC25 (void*,int) ; 
 scalar_t__ FUNC26 (char**) ; 
 int /*<<< orphan*/  FUNC27 (char**) ; 

__attribute__((used)) static int FUNC28(struct crypto_akcipher *tfm,
			     const struct akcipher_testvec *vecs)
{
	char *xbuf[XBUFSIZE];
	struct akcipher_request *req;
	void *outbuf_enc = NULL;
	void *outbuf_dec = NULL;
	struct crypto_wait wait;
	unsigned int out_len_max, out_len = 0;
	int err = -ENOMEM;
	struct scatterlist src, dst, src_tab[3];
	const char *m, *c;
	unsigned int m_size, c_size;
	const char *op;
	u8 *key, *ptr;

	if (FUNC26(xbuf))
		return err;

	req = FUNC1(tfm, GFP_KERNEL);
	if (!req)
		goto free_xbuf;

	FUNC12(&wait);

	key = FUNC16(vecs->key_len + sizeof(u32) * 2 + vecs->param_len,
		      GFP_KERNEL);
	if (!key)
		goto free_xbuf;
	FUNC20(key, vecs->key, vecs->key_len);
	ptr = key + vecs->key_len;
	ptr = FUNC25(ptr, vecs->algo);
	ptr = FUNC25(ptr, vecs->param_len);
	FUNC20(ptr, vecs->params, vecs->param_len);

	if (vecs->public_key_vec)
		err = FUNC9(tfm, key, vecs->key_len);
	else
		err = FUNC8(tfm, key, vecs->key_len);
	if (err)
		goto free_req;

	/*
	 * First run test which do not require a private key, such as
	 * encrypt or verify.
	 */
	err = -ENOMEM;
	out_len_max = FUNC7(tfm);
	outbuf_enc = FUNC17(out_len_max, GFP_KERNEL);
	if (!outbuf_enc)
		goto free_req;

	if (!vecs->siggen_sigver_test) {
		m = vecs->m;
		m_size = vecs->m_size;
		c = vecs->c;
		c_size = vecs->c_size;
		op = "encrypt";
	} else {
		/* Swap args so we could keep plaintext (digest)
		 * in vecs->m, and cooked signature in vecs->c.
		 */
		m = vecs->c; /* signature */
		m_size = vecs->c_size;
		c = vecs->m; /* digest */
		c_size = vecs->m_size;
		op = "verify";
	}

	if (FUNC0(m_size > PAGE_SIZE))
		goto free_all;
	FUNC20(xbuf[0], m, m_size);

	FUNC23(src_tab, 3);
	FUNC24(&src_tab[0], xbuf[0], 8);
	FUNC24(&src_tab[1], xbuf[0] + 8, m_size - 8);
	if (vecs->siggen_sigver_test) {
		if (FUNC0(c_size > PAGE_SIZE))
			goto free_all;
		FUNC20(xbuf[1], c, c_size);
		FUNC24(&src_tab[2], xbuf[1], c_size);
		FUNC4(req, src_tab, NULL, m_size, c_size);
	} else {
		FUNC22(&dst, outbuf_enc, out_len_max);
		FUNC4(req, src_tab, &dst, m_size,
					   out_len_max);
	}
	FUNC3(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				      crypto_req_done, &wait);

	err = FUNC13(vecs->siggen_sigver_test ?
			      /* Run asymmetric signature verification */
			      FUNC11(req) :
			      /* Run asymmetric encrypt */
			      FUNC6(req), &wait);
	if (err) {
		FUNC21("alg: akcipher: %s test failed. err %d\n", op, err);
		goto free_all;
	}
	if (!vecs->siggen_sigver_test) {
		if (req->dst_len != c_size) {
			FUNC21("alg: akcipher: %s test failed. Invalid output len\n",
			       op);
			err = -EINVAL;
			goto free_all;
		}
		/* verify that encrypted message is equal to expected */
		if (FUNC19(c, outbuf_enc, c_size) != 0) {
			FUNC21("alg: akcipher: %s test failed. Invalid output\n",
			       op);
			FUNC14(outbuf_enc, c_size);
			err = -EINVAL;
			goto free_all;
		}
	}

	/*
	 * Don't invoke (decrypt or sign) test which require a private key
	 * for vectors with only a public key.
	 */
	if (vecs->public_key_vec) {
		err = 0;
		goto free_all;
	}
	outbuf_dec = FUNC17(out_len_max, GFP_KERNEL);
	if (!outbuf_dec) {
		err = -ENOMEM;
		goto free_all;
	}

	op = vecs->siggen_sigver_test ? "sign" : "decrypt";
	if (FUNC0(c_size > PAGE_SIZE))
		goto free_all;
	FUNC20(xbuf[0], c, c_size);

	FUNC22(&src, xbuf[0], c_size);
	FUNC22(&dst, outbuf_dec, out_len_max);
	FUNC12(&wait);
	FUNC4(req, &src, &dst, c_size, out_len_max);

	err = FUNC13(vecs->siggen_sigver_test ?
			      /* Run asymmetric signature generation */
			      FUNC10(req) :
			      /* Run asymmetric decrypt */
			      FUNC5(req), &wait);
	if (err) {
		FUNC21("alg: akcipher: %s test failed. err %d\n", op, err);
		goto free_all;
	}
	out_len = req->dst_len;
	if (out_len < m_size) {
		FUNC21("alg: akcipher: %s test failed. Invalid output len %u\n",
		       op, out_len);
		err = -EINVAL;
		goto free_all;
	}
	/* verify that decrypted message is equal to the original msg */
	if (FUNC18(outbuf_dec, 0, out_len - m_size) ||
	    FUNC19(m, outbuf_dec + out_len - m_size, m_size)) {
		FUNC21("alg: akcipher: %s test failed. Invalid output\n", op);
		FUNC14(outbuf_dec, out_len);
		err = -EINVAL;
	}
free_all:
	FUNC15(outbuf_dec);
	FUNC15(outbuf_enc);
free_req:
	FUNC2(req);
	FUNC15(key);
free_xbuf:
	FUNC27(xbuf);
	return err;
}