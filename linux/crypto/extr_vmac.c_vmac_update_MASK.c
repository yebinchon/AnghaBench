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
typedef  int /*<<< orphan*/  u8 ;
struct vmac_tfm_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bytes; } ;
struct vmac_desc_ctx {unsigned int nonce_size; int partial_size; int /*<<< orphan*/ * partial; int /*<<< orphan*/  const* partial_words; TYPE_1__ nonce; } ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 unsigned int VMAC_NHBYTES ; 
 unsigned int VMAC_NONCEBYTES ; 
 struct vmac_tfm_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 struct vmac_desc_ctx* FUNC4 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmac_tfm_ctx const*,struct vmac_desc_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc, const u8 *p, unsigned int len)
{
	const struct vmac_tfm_ctx *tctx = FUNC0(desc->tfm);
	struct vmac_desc_ctx *dctx = FUNC4(desc);
	unsigned int n;

	/* Nonce is passed as first VMAC_NONCEBYTES bytes of data */
	if (dctx->nonce_size < VMAC_NONCEBYTES) {
		n = FUNC2(len, VMAC_NONCEBYTES - dctx->nonce_size);
		FUNC1(&dctx->nonce.bytes[dctx->nonce_size], p, n);
		dctx->nonce_size += n;
		p += n;
		len -= n;
	}

	if (dctx->partial_size) {
		n = FUNC2(len, VMAC_NHBYTES - dctx->partial_size);
		FUNC1(&dctx->partial[dctx->partial_size], p, n);
		dctx->partial_size += n;
		p += n;
		len -= n;
		if (dctx->partial_size == VMAC_NHBYTES) {
			FUNC5(tctx, dctx, dctx->partial_words, 1);
			dctx->partial_size = 0;
		}
	}

	if (len >= VMAC_NHBYTES) {
		n = FUNC3(len, VMAC_NHBYTES);
		/* TODO: 'p' may be misaligned here */
		FUNC5(tctx, dctx, (const __le64 *)p, n / VMAC_NHBYTES);
		p += n;
		len -= n;
	}

	if (len) {
		FUNC1(dctx->partial, p, len);
		dctx->partial_size = len;
	}

	return 0;
}