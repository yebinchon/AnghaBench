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
struct scatterlist {int dummy; } ;
struct crypto_wait {int dummy; } ;
struct crypto_acomp {int dummy; } ;
struct comp_testvec {int inlen; int outlen; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
struct acomp_req {int dlen; } ;

/* Variables and functions */
 unsigned int COMP_BUF_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct acomp_req* FUNC0 (struct crypto_acomp*) ; 
 int /*<<< orphan*/  FUNC1 (struct acomp_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct acomp_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int /*<<< orphan*/  FUNC3 (struct acomp_req*,struct scatterlist*,struct scatterlist*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct acomp_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct acomp_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_acomp*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_wait*) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct scatterlist*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC18(struct crypto_acomp *tfm,
			      const struct comp_testvec *ctemplate,
		      const struct comp_testvec *dtemplate,
		      int ctcount, int dtcount)
{
	const char *algo = FUNC8(FUNC6(tfm));
	unsigned int i;
	char *output, *decomp_out;
	int ret;
	struct scatterlist src, dst;
	struct acomp_req *req;
	struct crypto_wait wait;

	output = FUNC12(COMP_BUF_SIZE, GFP_KERNEL);
	if (!output)
		return -ENOMEM;

	decomp_out = FUNC12(COMP_BUF_SIZE, GFP_KERNEL);
	if (!decomp_out) {
		FUNC11(output);
		return -ENOMEM;
	}

	for (i = 0; i < ctcount; i++) {
		unsigned int dlen = COMP_BUF_SIZE;
		int ilen = ctemplate[i].inlen;
		void *input_vec;

		input_vec = FUNC13(ctemplate[i].input, ilen, GFP_KERNEL);
		if (!input_vec) {
			ret = -ENOMEM;
			goto out;
		}

		FUNC15(output, 0, dlen);
		FUNC7(&wait);
		FUNC17(&src, input_vec, ilen);
		FUNC17(&dst, output, dlen);

		req = FUNC0(tfm);
		if (!req) {
			FUNC16("alg: acomp: request alloc failed for %s\n",
			       algo);
			FUNC11(input_vec);
			ret = -ENOMEM;
			goto out;
		}

		FUNC3(req, &src, &dst, ilen, dlen);
		FUNC2(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
					   crypto_req_done, &wait);

		ret = FUNC9(FUNC4(req), &wait);
		if (ret) {
			FUNC16("alg: acomp: compression failed on test %d for %s: ret=%d\n",
			       i + 1, algo, -ret);
			FUNC11(input_vec);
			FUNC1(req);
			goto out;
		}

		ilen = req->dlen;
		dlen = COMP_BUF_SIZE;
		FUNC17(&src, output, ilen);
		FUNC17(&dst, decomp_out, dlen);
		FUNC7(&wait);
		FUNC3(req, &src, &dst, ilen, dlen);

		ret = FUNC9(FUNC5(req), &wait);
		if (ret) {
			FUNC16("alg: acomp: compression failed on test %d for %s: ret=%d\n",
			       i + 1, algo, -ret);
			FUNC11(input_vec);
			FUNC1(req);
			goto out;
		}

		if (req->dlen != ctemplate[i].inlen) {
			FUNC16("alg: acomp: Compression test %d failed for %s: output len = %d\n",
			       i + 1, algo, req->dlen);
			ret = -EINVAL;
			FUNC11(input_vec);
			FUNC1(req);
			goto out;
		}

		if (FUNC14(input_vec, decomp_out, req->dlen)) {
			FUNC16("alg: acomp: Compression test %d failed for %s\n",
			       i + 1, algo);
			FUNC10(output, req->dlen);
			ret = -EINVAL;
			FUNC11(input_vec);
			FUNC1(req);
			goto out;
		}

		FUNC11(input_vec);
		FUNC1(req);
	}

	for (i = 0; i < dtcount; i++) {
		unsigned int dlen = COMP_BUF_SIZE;
		int ilen = dtemplate[i].inlen;
		void *input_vec;

		input_vec = FUNC13(dtemplate[i].input, ilen, GFP_KERNEL);
		if (!input_vec) {
			ret = -ENOMEM;
			goto out;
		}

		FUNC15(output, 0, dlen);
		FUNC7(&wait);
		FUNC17(&src, input_vec, ilen);
		FUNC17(&dst, output, dlen);

		req = FUNC0(tfm);
		if (!req) {
			FUNC16("alg: acomp: request alloc failed for %s\n",
			       algo);
			FUNC11(input_vec);
			ret = -ENOMEM;
			goto out;
		}

		FUNC3(req, &src, &dst, ilen, dlen);
		FUNC2(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
					   crypto_req_done, &wait);

		ret = FUNC9(FUNC5(req), &wait);
		if (ret) {
			FUNC16("alg: acomp: decompression failed on test %d for %s: ret=%d\n",
			       i + 1, algo, -ret);
			FUNC11(input_vec);
			FUNC1(req);
			goto out;
		}

		if (req->dlen != dtemplate[i].outlen) {
			FUNC16("alg: acomp: Decompression test %d failed for %s: output len = %d\n",
			       i + 1, algo, req->dlen);
			ret = -EINVAL;
			FUNC11(input_vec);
			FUNC1(req);
			goto out;
		}

		if (FUNC14(output, dtemplate[i].output, req->dlen)) {
			FUNC16("alg: acomp: Decompression test %d failed for %s\n",
			       i + 1, algo);
			FUNC10(output, req->dlen);
			ret = -EINVAL;
			FUNC11(input_vec);
			FUNC1(req);
			goto out;
		}

		FUNC11(input_vec);
		FUNC1(req);
	}

	ret = 0;

out:
	FUNC11(decomp_out);
	FUNC11(output);
	return ret;
}