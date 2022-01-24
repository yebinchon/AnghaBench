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
struct skcipher_alg {int /*<<< orphan*/  (* exit ) (struct crypto_skcipher*) ;} ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 struct crypto_skcipher* FUNC0 (struct crypto_tfm*) ; 
 struct skcipher_alg* FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct crypto_skcipher *skcipher = FUNC0(tfm);
	struct skcipher_alg *alg = FUNC1(skcipher);

	alg->exit(skcipher);
}