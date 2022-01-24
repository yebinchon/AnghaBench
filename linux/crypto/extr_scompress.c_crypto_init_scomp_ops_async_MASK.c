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
struct crypto_tfm {int /*<<< orphan*/  exit; struct crypto_alg* __crt_alg; } ;
struct crypto_scomp {int dummy; } ;
struct crypto_alg {int dummy; } ;
struct crypto_acomp {int reqsize; int /*<<< orphan*/  dst_free; int /*<<< orphan*/  decompress; int /*<<< orphan*/  compress; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct crypto_scomp*) ; 
 int FUNC1 (struct crypto_scomp*) ; 
 struct crypto_acomp* FUNC2 (struct crypto_tfm*) ; 
 struct crypto_scomp* FUNC3 (struct crypto_alg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crypto_exit_scomp_ops_async ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_alg*) ; 
 int /*<<< orphan*/  crypto_scomp_type ; 
 struct crypto_scomp** FUNC6 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  scomp_acomp_compress ; 
 int /*<<< orphan*/  scomp_acomp_decompress ; 
 int /*<<< orphan*/  sgl_free ; 

int FUNC7(struct crypto_tfm *tfm)
{
	struct crypto_alg *calg = tfm->__crt_alg;
	struct crypto_acomp *crt = FUNC2(tfm);
	struct crypto_scomp **ctx = FUNC6(tfm);
	struct crypto_scomp *scomp;

	if (!FUNC4(calg))
		return -EAGAIN;

	scomp = FUNC3(calg, &crypto_scomp_type);
	if (FUNC0(scomp)) {
		FUNC5(calg);
		return FUNC1(scomp);
	}

	*ctx = scomp;
	tfm->exit = crypto_exit_scomp_ops_async;

	crt->compress = scomp_acomp_compress;
	crt->decompress = scomp_acomp_decompress;
	crt->dst_free = sgl_free;
	crt->reqsize = sizeof(void *);

	return 0;
}