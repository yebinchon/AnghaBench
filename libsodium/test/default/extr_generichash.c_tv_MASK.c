#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  in_hex; int /*<<< orphan*/  out_hex; int /*<<< orphan*/  key_hex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,unsigned char*,unsigned long long,unsigned char*,int) ; 
 int crypto_generichash_BYTES_MAX ; 
 int crypto_generichash_KEYBYTES_MAX ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* tests ; 

__attribute__((used)) static int
FUNC8(void)
{
    unsigned char *expected_out;
    unsigned char *in;
    unsigned char *key;
    unsigned char *out;
    size_t         i = 0U;
    size_t         in_len;

    key = (unsigned char *) FUNC6(crypto_generichash_KEYBYTES_MAX);
    out = (unsigned char *) FUNC6(crypto_generichash_BYTES_MAX);
    expected_out = (unsigned char *) FUNC6(crypto_generichash_BYTES_MAX);
    do {
        FUNC0(FUNC7(tests[i].key_hex) == 2 * crypto_generichash_KEYBYTES_MAX);
        FUNC5(key, crypto_generichash_KEYBYTES_MAX,
                       tests[i].key_hex, FUNC7(tests[i].key_hex),
                       NULL, NULL, NULL);
        FUNC0(FUNC7(tests[i].out_hex) == 2 * crypto_generichash_BYTES_MAX);
        FUNC5(expected_out, crypto_generichash_BYTES_MAX,
                       tests[i].out_hex, FUNC7(tests[i].out_hex),
                       NULL, NULL, NULL);
        in_len = FUNC7(tests[i].in_hex) / 2;
        in = (unsigned char *) FUNC6(in_len);
        FUNC5(in, in_len, tests[i].in_hex, FUNC7(tests[i].in_hex),
                       NULL, NULL, NULL);
        FUNC1(out, crypto_generichash_BYTES_MAX,
                           in, (unsigned long long) in_len,
                           key, crypto_generichash_KEYBYTES_MAX);
        if (FUNC2(out, expected_out, crypto_generichash_BYTES_MAX) != 0) {
            FUNC3("Test vector #%u failed\n", (unsigned int) i);
        }
        FUNC4(in);
    } while (++i < (sizeof tests) / (sizeof tests[0]));
    FUNC4(key);
    FUNC4(out);
    FUNC4(expected_out);

    return 0;
}