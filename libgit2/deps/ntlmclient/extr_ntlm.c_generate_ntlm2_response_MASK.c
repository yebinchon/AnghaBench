#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char uint64_t ;
typedef  unsigned char uint32_t ;
struct TYPE_10__ {int target_info_len; unsigned char* target_info; } ;
struct TYPE_11__ {unsigned char* ntlm2_response; size_t ntlm2_response_len; TYPE_1__ challenge; int /*<<< orphan*/  nonce; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_2__ ntlm_client ;

/* Variables and functions */
 int NTLM_NTLM2_HASH_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,TYPE_2__*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 unsigned char FUNC5 (int) ; 
 unsigned char FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 

__attribute__((used)) static bool FUNC11(ntlm_client *ntlm)
{
	size_t blob_len, ntlm2_response_len;
	uint32_t signature;
	uint64_t timestamp, nonce;
	unsigned char ntlm2_hash[NTLM_NTLM2_HASH_LEN];
	unsigned char challengehash[16];
	unsigned char *blob;

	if (!FUNC4(ntlm) ||
		!FUNC1(ntlm) ||
		!FUNC3(ntlm2_hash, ntlm))
		return false;

	blob_len = ntlm->challenge.target_info_len + 32;
	ntlm2_response_len = blob_len + 16;

	if ((ntlm->ntlm2_response = FUNC7(ntlm2_response_len)) == NULL) {
		FUNC10(ntlm, "out of memory");
		return false;
	}

	/* position the blob in the response; we'll use it then return it */
	blob = ntlm->ntlm2_response + 16;

	/* the blob's integer values are in network byte order */
	signature = FUNC5(0x01010000);
	timestamp = FUNC6(ntlm->timestamp);
	nonce = FUNC6(ntlm->nonce);

	/* construct the blob */
	FUNC8(&blob[0], &signature, 4);
	FUNC9(&blob[4], 0, 4);
	FUNC8(&blob[8], &timestamp, 8);
	FUNC8(&blob[16], &nonce, 8);
	FUNC9(&blob[24], 0, 4);
	FUNC8(&blob[28], ntlm->challenge.target_info, ntlm->challenge.target_info_len);
	FUNC9(&blob[28 + ntlm->challenge.target_info_len], 0, 4);

	if (!FUNC2(challengehash, ntlm, ntlm2_hash, blob, blob_len))
		return false;

	FUNC8(ntlm->ntlm2_response, challengehash, 16);
	ntlm->ntlm2_response_len = ntlm2_response_len;

	if (!FUNC0(ntlm, ntlm2_hash))
		return false;

	return true;
}