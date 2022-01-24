#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  nonce; } ;
struct TYPE_6__ {int /*<<< orphan*/  hmac_ctx; TYPE_1__ challenge; } ;
typedef  TYPE_2__ ntlm_client ;

/* Variables and functions */
 int /*<<< orphan*/  NTLM_NTLM2_HASH_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 

__attribute__((used)) static bool FUNC6(
	unsigned char out[16],
	ntlm_client *ntlm,
	unsigned char ntlm2_hash[NTLM_NTLM2_HASH_LEN],
	const unsigned char *blob,
	size_t blob_len)
{
	size_t out_len = 16;

	if (!FUNC2(ntlm->hmac_ctx) ||
		!FUNC4(ntlm->hmac_ctx,
			ntlm2_hash, NTLM_NTLM2_HASH_LEN) ||
		!FUNC5(ntlm->hmac_ctx,
			(const unsigned char *)&ntlm->challenge.nonce, 8) ||
		!FUNC5(ntlm->hmac_ctx, blob, blob_len) ||
		!FUNC3(out, &out_len, ntlm->hmac_ctx)) {
		FUNC1(ntlm, "failed to create HMAC-MD5");
		return false;
	}

	FUNC0(out_len == 16);
	return true;
}