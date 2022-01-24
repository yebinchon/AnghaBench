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
 scalar_t__ FUNC1 (unsigned char*,unsigned int,unsigned char*,unsigned char*) ; 
 int crypto_stream_chacha20_KEYBYTES ; 
 int crypto_stream_chacha20_NONCEBYTES ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,int,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*,int,unsigned char*,unsigned int,unsigned char*) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static
void FUNC13(void)
{
    static struct {
        const char *key_hex;
        const char *nonce_hex;
    } tests[]
      = { { "0000000000000000000000000000000000000000000000000000000000000000",
            "0000000000000000" },
          { "0000000000000000000000000000000000000000000000000000000000000001",
            "0000000000000000" },
          { "0000000000000000000000000000000000000000000000000000000000000000",
            "0000000000000001" },
          { "0000000000000000000000000000000000000000000000000000000000000000",
            "0100000000000000" },
          { "000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f",
            "0001020304050607" } };
    unsigned char  key[crypto_stream_chacha20_KEYBYTES];
    unsigned char  nonce[crypto_stream_chacha20_NONCEBYTES];
    unsigned char *part;
    unsigned char  out[160];
    unsigned char  zero[160];
    char           out_hex[160 * 2 + 1];
    size_t         i = 0U;
    size_t         plen;

    FUNC5(zero, 0, sizeof zero);
    do {
        FUNC10((unsigned char *)key, sizeof key, tests[i].key_hex,
                       FUNC12(tests[i].key_hex), NULL, NULL, NULL);
        FUNC10(nonce, sizeof nonce, tests[i].nonce_hex,
                       FUNC12(tests[i].nonce_hex), NULL, NULL, NULL);
        FUNC1(out, sizeof out, nonce, key);
        FUNC8(out_hex, sizeof out_hex, out, sizeof out);
        FUNC6("[%s]\n", out_hex);
        for (plen = 1U; plen < sizeof out; plen++) {
            part = (unsigned char *) FUNC11(plen);
            FUNC2(part, out, plen, nonce, key);
            if (FUNC4(part, zero, plen) != 0) {
                FUNC6("Failed with length %lu\n", (unsigned long) plen);
            }
            FUNC9(part);
        }
    } while (++i < (sizeof tests) / (sizeof tests[0]));
    FUNC0(66 <= sizeof out);
    for (plen = 1U; plen < 66; plen += 3) {
        FUNC5(out, (int) (plen & 0xff), sizeof out);
        FUNC1(out, plen, nonce, key);
        FUNC8(out_hex, sizeof out_hex, out, sizeof out);
        FUNC6("[%s]\n", out_hex);
    }
    FUNC7(out, sizeof out);
    FUNC1(out, sizeof out, nonce, key);
    FUNC8(out_hex, sizeof out_hex, out, sizeof out);
    FUNC6("[%s]\n", out_hex);

    FUNC0(FUNC1(out, 0U, nonce, key) == 0);
    FUNC0(FUNC2(out, out, 0U, nonce, key) == 0);
    FUNC0(FUNC2(out, out, 0U, nonce, key) == 0);
    FUNC0(FUNC3(out, out, 0U, nonce, 1U, key) == 0);

    FUNC5(out, 0x42, sizeof out);
    FUNC2(out, out, sizeof out, nonce, key);
    FUNC8(out_hex, sizeof out_hex, out, sizeof out);
    FUNC6("[%s]\n", out_hex);

    FUNC3(out, out, sizeof out, nonce, 0U, key);
    FUNC8(out_hex, sizeof out_hex, out, sizeof out);
    FUNC6("[%s]\n", out_hex);

    FUNC3(out, out, sizeof out, nonce, 1U, key);
    FUNC8(out_hex, sizeof out_hex, out, sizeof out);
    FUNC6("[%s]\n", out_hex);
}