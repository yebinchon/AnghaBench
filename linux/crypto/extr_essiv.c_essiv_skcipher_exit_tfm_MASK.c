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
struct TYPE_2__ {int /*<<< orphan*/  skcipher; } ;
struct essiv_tfm_ctx {int /*<<< orphan*/  hash; int /*<<< orphan*/  essiv_cipher; TYPE_1__ u; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct essiv_tfm_ctx* FUNC3 (struct crypto_skcipher*) ; 

__attribute__((used)) static void FUNC4(struct crypto_skcipher *tfm)
{
	struct essiv_tfm_ctx *tctx = FUNC3(tfm);

	FUNC2(tctx->u.skcipher);
	FUNC0(tctx->essiv_cipher);
	FUNC1(tctx->hash);
}