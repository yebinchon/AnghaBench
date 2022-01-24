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
typedef  int /*<<< orphan*/  u8 ;
struct drbg_string {int dummy; } ;
struct drbg_state {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_rng {int dummy; } ;

/* Variables and functions */
 struct drbg_state* FUNC0 (struct crypto_rng*) ; 
 struct crypto_tfm* FUNC1 (struct crypto_rng*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (struct drbg_state*,struct drbg_string*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drbg_string*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_rng *tfm,
			   const u8 *seed, unsigned int slen)
{
	struct drbg_state *drbg = FUNC0(tfm);
	struct crypto_tfm *tfm_base = FUNC1(tfm);
	bool pr = false;
	struct drbg_string string;
	struct drbg_string *seed_string = NULL;
	int coreref = 0;

	FUNC3(FUNC2(tfm_base), &coreref,
			      &pr);
	if (0 < slen) {
		FUNC5(&string, seed, slen);
		seed_string = &string;
	}

	return FUNC4(drbg, seed_string, coreref, pr);
}