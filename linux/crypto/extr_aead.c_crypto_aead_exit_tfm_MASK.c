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
struct crypto_aead {int dummy; } ;
struct aead_alg {int /*<<< orphan*/  (* exit ) (struct crypto_aead*) ;} ;

/* Variables and functions */
 struct crypto_aead* FUNC0 (struct crypto_tfm*) ; 
 struct aead_alg* FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct crypto_aead *aead = FUNC0(tfm);
	struct aead_alg *alg = FUNC1(aead);

	alg->exit(aead);
}