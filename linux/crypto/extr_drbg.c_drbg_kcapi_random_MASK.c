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
struct crypto_rng {int dummy; } ;

/* Variables and functions */
 struct drbg_state* FUNC0 (struct crypto_rng*) ; 
 int FUNC1 (struct drbg_state*,int /*<<< orphan*/ *,unsigned int,struct drbg_string*) ; 
 int /*<<< orphan*/  FUNC2 (struct drbg_string*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_rng *tfm,
			     const u8 *src, unsigned int slen,
			     u8 *dst, unsigned int dlen)
{
	struct drbg_state *drbg = FUNC0(tfm);
	struct drbg_string *addtl = NULL;
	struct drbg_string string;

	if (slen) {
		/* linked list variable is now local to allow modification */
		FUNC2(&string, src, slen);
		addtl = &string;
	}

	return FUNC1(drbg, dst, dlen, addtl);
}