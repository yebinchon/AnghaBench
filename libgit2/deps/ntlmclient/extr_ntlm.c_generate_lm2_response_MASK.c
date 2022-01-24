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
typedef  unsigned char uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  nonce; } ;
struct TYPE_6__ {int lm_response_len; int /*<<< orphan*/ * lm_response; int /*<<< orphan*/  hmac_ctx; TYPE_1__ challenge; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_2__ ntlm_client ;

/* Variables and functions */
 int /*<<< orphan*/  NTLM_NTLM2_HASH_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

__attribute__((used)) static bool FUNC8(ntlm_client *ntlm,
	unsigned char ntlm2_hash[NTLM_NTLM2_HASH_LEN])
{
	unsigned char lm2_challengehash[16];
	size_t lm2_len = 16;
	uint64_t local_nonce;

	local_nonce = FUNC1(ntlm->nonce);

	if (!FUNC4(ntlm->hmac_ctx) ||
		!FUNC6(ntlm->hmac_ctx,
			ntlm2_hash, NTLM_NTLM2_HASH_LEN) ||
		!FUNC7(ntlm->hmac_ctx,
			(const unsigned char *)&ntlm->challenge.nonce, 8) ||
		!FUNC7(ntlm->hmac_ctx,
			(const unsigned char *)&local_nonce, 8) ||
		!FUNC5(lm2_challengehash, &lm2_len, ntlm->hmac_ctx)) {
		FUNC3(ntlm, "failed to create HMAC-MD5");
		return false;
	}

	FUNC0(lm2_len == 16);

	FUNC2(&ntlm->lm_response[0], lm2_challengehash, 16);
	FUNC2(&ntlm->lm_response[16], &local_nonce, 8);

	ntlm->lm_response_len = 24;
	return true;
}