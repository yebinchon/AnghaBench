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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,unsigned char*,int) ; 
 int FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int,unsigned char*,int,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char FUNC6 (unsigned char) ; 
 int FUNC7 (char const*) ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char const*,char*) ; 

__attribute__((used)) static char *FUNC11(const char *challenge_64, const char *user, const char *pass)
{
	int i, resp_len, encoded_len, decoded_len;
	unsigned char hash[16];
	char hex[33];
	char *response, *response_64, *challenge;

	/*
	 * length of challenge_64 (i.e. base-64 encoded string) is a good
	 * enough upper bound for challenge (decoded result).
	 */
	encoded_len = FUNC7(challenge_64);
	challenge = FUNC8(encoded_len);
	decoded_len = FUNC1((unsigned char *)challenge,
				      (unsigned char *)challenge_64, encoded_len);
	if (decoded_len < 0)
		FUNC5("invalid challenge %s", challenge_64);
	if (!FUNC4(FUNC3(), pass, FUNC7(pass), (unsigned char *)challenge, decoded_len, hash, NULL))
		FUNC5("HMAC error");

	hex[32] = 0;
	for (i = 0; i < 16; i++) {
		hex[2 * i] = FUNC6((hash[i] >> 4) & 0xf);
		hex[2 * i + 1] = FUNC6(hash[i] & 0xf);
	}

	/* response: "<user> <digest in hex>" */
	response = FUNC10("%s %s", user, hex);
	resp_len = FUNC7(response);

	response_64 = FUNC9(FUNC0(resp_len));
	encoded_len = FUNC2((unsigned char *)response_64,
				      (unsigned char *)response, resp_len);
	if (encoded_len < 0)
		FUNC5("EVP_EncodeBlock error");
	return (char *)response_64;
}