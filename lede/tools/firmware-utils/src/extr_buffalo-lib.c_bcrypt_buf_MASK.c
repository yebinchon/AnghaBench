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
struct bcrypt_ctx {int dummy; } ;

/* Variables and functions */
 unsigned long BCRYPT_DEFAULT_STATE_LEN ; 
 int /*<<< orphan*/  BCRYPT_MAX_KEYLEN ; 
 int /*<<< orphan*/  FUNC0 (struct bcrypt_ctx*) ; 
 int FUNC1 (struct bcrypt_ctx*,unsigned char*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct bcrypt_ctx*,unsigned char*,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,unsigned int) ; 
 unsigned int FUNC4 (char*) ; 

int FUNC5(unsigned char seed, unsigned char *key, unsigned char *src,
	       unsigned char *dst, unsigned long len, int longstate)
{
	unsigned char bckey[BCRYPT_MAX_KEYLEN + 1];
	unsigned int keylen;
	struct bcrypt_ctx ctx;
	int ret;

	/* setup decryption key */
	keylen = FUNC4((char *) key);
	bckey[0] = seed;
	FUNC3(&bckey[1], key, keylen);

	keylen++;

	ret = FUNC1(&ctx, bckey, keylen,
			  (longstate) ? len : BCRYPT_DEFAULT_STATE_LEN);
	if (ret)
		return ret;

	FUNC2(&ctx, src, dst, len);
	FUNC0(&ctx);

	return 0;
}