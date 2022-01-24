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
struct rtattr {scalar_t__ rta_type; scalar_t__ rta_len; } ;
struct crypto_authenc_keys {unsigned int enckeylen; int authkeylen; int /*<<< orphan*/  const* enckey; int /*<<< orphan*/  const* authkey; } ;
struct crypto_authenc_key_param {int /*<<< orphan*/  enckeylen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CRYPTO_AUTHENC_KEYA_PARAM ; 
 int EINVAL ; 
 int RTA_ALIGNTO ; 
 struct crypto_authenc_key_param* FUNC1 (struct rtattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtattr*,unsigned int) ; 
 int FUNC3 (struct rtattr*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct crypto_authenc_keys *keys, const u8 *key,
			       unsigned int keylen)
{
	struct rtattr *rta = (struct rtattr *)key;
	struct crypto_authenc_key_param *param;

	if (!FUNC2(rta, keylen))
		return -EINVAL;
	if (rta->rta_type != CRYPTO_AUTHENC_KEYA_PARAM)
		return -EINVAL;

	/*
	 * RTA_OK() didn't align the rtattr's payload when validating that it
	 * fits in the buffer.  Yet, the keys should start on the next 4-byte
	 * aligned boundary.  To avoid confusion, require that the rtattr
	 * payload be exactly the param struct, which has a 4-byte aligned size.
	 */
	if (FUNC3(rta) != sizeof(*param))
		return -EINVAL;
	FUNC0(sizeof(*param) % RTA_ALIGNTO);

	param = FUNC1(rta);
	keys->enckeylen = FUNC4(param->enckeylen);

	key += rta->rta_len;
	keylen -= rta->rta_len;

	if (keylen < keys->enckeylen)
		return -EINVAL;

	keys->authkeylen = keylen - keys->enckeylen;
	keys->authkey = key;
	keys->enckey = key + keys->authkeylen;

	return 0;
}