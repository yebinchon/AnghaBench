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
typedef  unsigned char* ntlm_des_block ;
typedef  int /*<<< orphan*/  keystr2 ;
typedef  int /*<<< orphan*/  keystr1 ;

/* Variables and functions */
 int FUNC0 (int,size_t) ; 
 unsigned char* NTLM_LM_PLAINTEXT ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned char**,unsigned char**,unsigned char**) ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const) ; 

__attribute__((used)) static inline bool FUNC6(
	ntlm_des_block out[2],
	const char *password)
{
	/* LM encrypts this known plaintext using the password as a key */
	ntlm_des_block plaintext = NTLM_LM_PLAINTEXT;
	ntlm_des_block keystr1, keystr2;
	size_t keystr1_len, keystr2_len;
	ntlm_des_block key1, key2;
	size_t password_len, i;

	/* Copy the first 14 characters of the password, uppercased */
	FUNC2(&keystr1, 0, sizeof(keystr1));
	FUNC2(&keystr2, 0, sizeof(keystr2));

	password_len = password ? FUNC4(password) : 0;

	/* Split the password into two 7 byte chunks */
	keystr1_len = FUNC0(7, password_len);
	keystr2_len = (password_len > 7) ? FUNC0(14, password_len) - 7 : 0;

	for (i = 0; i < keystr1_len; i++)
		keystr1[i] = (unsigned char)FUNC5(password[i]);
	for (i = 0; i < keystr2_len; i++)
		keystr2[i] = (unsigned char)FUNC5(password[i+7]);

	/* DES encrypt the LM constant using the password as the key */
	FUNC1(&key1, keystr1, keystr1_len);
	FUNC1(&key2, keystr2, keystr2_len);

	return FUNC3(&out[0], &plaintext, &key1) &&
		FUNC3(&out[1], &plaintext, &key2);
}