#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
struct hmac_ctx {struct crypto_shash* hash; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_7__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 char HMAC_IPAD_VALUE ; 
 char HMAC_OPAD_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct crypto_shash*) ; 
 struct hmac_ctx* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct crypto_shash*) ; 
 char* FUNC3 (struct crypto_shash*) ; 
 int FUNC4 (TYPE_1__*,char const*,unsigned int,char*) ; 
 int FUNC5 (struct crypto_shash*) ; 
 int FUNC6 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct crypto_shash*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* shash ; 

__attribute__((used)) static int FUNC13(struct crypto_shash *parent,
		       const u8 *inkey, unsigned int keylen)
{
	int bs = FUNC2(parent);
	int ds = FUNC5(parent);
	int ss = FUNC8(parent);
	char *ipad = FUNC3(parent);
	char *opad = ipad + ss;
	struct hmac_ctx *ctx = FUNC1(opad + ss,
					 FUNC10());
	struct crypto_shash *hash = ctx->hash;
	FUNC0(shash, hash);
	unsigned int i;

	shash->tfm = hash;

	if (keylen > bs) {
		int err;

		err = FUNC4(shash, inkey, keylen, ipad);
		if (err)
			return err;

		keylen = ds;
	} else
		FUNC11(ipad, inkey, keylen);

	FUNC12(ipad + keylen, 0, bs - keylen);
	FUNC11(opad, ipad, bs);

	for (i = 0; i < bs; i++) {
		ipad[i] ^= HMAC_IPAD_VALUE;
		opad[i] ^= HMAC_OPAD_VALUE;
	}

	return FUNC7(shash) ?:
	       FUNC9(shash, ipad, bs) ?:
	       FUNC6(shash, ipad) ?:
	       FUNC7(shash) ?:
	       FUNC9(shash, opad, bs) ?:
	       FUNC6(shash, opad);
}