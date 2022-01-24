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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sha1nfo ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(const char *key, const char *data, char out[29])
{
	const char *b64tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	const uint8_t *digest;
	int i, j, rest;
	sha1nfo s;
	FUNC1(&s, (uint8_t*)key, FUNC3(key));
	FUNC2(&s, data, FUNC3(data));
	digest = FUNC0(&s);
	for (j = i = 0, rest = 8; i < 20; ++j) { // base64 encoding
		if (rest <= 6) {
			int next = i < 19? digest[i+1] : 0;
			out[j] = b64tab[(int)(digest[i] << (6-rest) & 0x3f) | next >> (rest+2)], ++i, rest += 2;
		} else out[j] = b64tab[(int)digest[i] >> (rest-6) & 0x3f], rest -= 6;
	}
	out[j++] = '='; out[j] = 0; // SHA1 digest always has 160 bits, or 20 bytes. We need one '=' at the end.
}