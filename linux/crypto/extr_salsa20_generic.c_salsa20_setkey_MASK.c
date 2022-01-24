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
typedef  char u8 ;
struct salsa20_ctx {void** initial_state; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int SALSA20_MAX_KEY_SIZE ; 
 unsigned int SALSA20_MIN_KEY_SIZE ; 
 struct salsa20_ctx* FUNC0 (struct crypto_skcipher*) ; 
 void* FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(struct crypto_skcipher *tfm, const u8 *key,
			  unsigned int keysize)
{
	static const char sigma[16] = "expand 32-byte k";
	static const char tau[16] = "expand 16-byte k";
	struct salsa20_ctx *ctx = FUNC0(tfm);
	const char *constants;

	if (keysize != SALSA20_MIN_KEY_SIZE &&
	    keysize != SALSA20_MAX_KEY_SIZE)
		return -EINVAL;

	ctx->initial_state[1] = FUNC1(key + 0);
	ctx->initial_state[2] = FUNC1(key + 4);
	ctx->initial_state[3] = FUNC1(key + 8);
	ctx->initial_state[4] = FUNC1(key + 12);
	if (keysize == 32) { /* recommended */
		key += 16;
		constants = sigma;
	} else { /* keysize == 16 */
		constants = tau;
	}
	ctx->initial_state[11] = FUNC1(key + 0);
	ctx->initial_state[12] = FUNC1(key + 4);
	ctx->initial_state[13] = FUNC1(key + 8);
	ctx->initial_state[14] = FUNC1(key + 12);
	ctx->initial_state[0]  = FUNC1(constants + 0);
	ctx->initial_state[5]  = FUNC1(constants + 4);
	ctx->initial_state[10] = FUNC1(constants + 8);
	ctx->initial_state[15] = FUNC1(constants + 12);

	/* space for the nonce; it will be overridden for each request */
	ctx->initial_state[6] = 0;
	ctx->initial_state[7] = 0;

	/* initial block number */
	ctx->initial_state[8] = 0;
	ctx->initial_state[9] = 0;

	return 0;
}