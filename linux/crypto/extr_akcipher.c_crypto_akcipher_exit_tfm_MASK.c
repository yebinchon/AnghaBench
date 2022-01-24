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
struct crypto_tfm {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_alg {int /*<<< orphan*/  (* exit ) (struct crypto_akcipher*) ;} ;

/* Variables and functions */
 struct crypto_akcipher* FUNC0 (struct crypto_tfm*) ; 
 struct akcipher_alg* FUNC1 (struct crypto_akcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_akcipher*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct crypto_akcipher *akcipher = FUNC0(tfm);
	struct akcipher_alg *alg = FUNC1(akcipher);

	alg->exit(akcipher);
}