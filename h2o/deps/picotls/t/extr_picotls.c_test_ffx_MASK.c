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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  ptls_cipher_context_t ;
struct TYPE_2__ {int bit_length; int /*<<< orphan*/ * algo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* ffx_variants ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int,int,char*) ; 
 int /*<<< orphan*/  ptls_minicrypto_aes128ctr ; 

__attribute__((used)) static void FUNC8(void)
{
    static uint8_t ffx_test_source[32] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f',
                                          'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v'};

    static uint8_t ffx_test_key[32] = {1,  2,  3,  4,  5,  6,  7,  8,  9,  10, 11, 12, 13, 14, 15, 16,
                                       17, 18, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29, 30, 31, 32};
    static uint8_t ffx_test_bad_key[32] = {0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  10, 11, 12, 13, 14, 15,
                                           16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29, 30, 31};

    static uint8_t ffx_test_iv[16] = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};
    static uint8_t ffx_test_bad_iv[16] = {11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26};

    static uint8_t ffx_test_mask[8] = {0x00, 0x01, 0x03, 0x07, 0x0F, 0x1F, 0x3F, 0x7F};
    ptls_cipher_context_t *ffx_enc = NULL;
    ptls_cipher_context_t *ffx_dec = NULL;
    ptls_cipher_context_t *ffx_dec_bad = NULL;
    uint8_t encrypted[32];
    uint8_t result[32];

    for (int i = 0; ffx_variants[i].algo != NULL; i++) {
        ffx_enc = FUNC6(ffx_variants[i].algo, 1, ffx_test_key);
        ffx_dec = FUNC6(ffx_variants[i].algo, 0, ffx_test_key);
        ffx_dec_bad = FUNC6(ffx_variants[i].algo, 0, ffx_test_bad_key);
        FUNC2(ffx_enc != NULL && ffx_dec != NULL && ffx_dec_bad != NULL);
        if (ffx_enc != NULL && ffx_dec != NULL && ffx_dec_bad != NULL) {
            int bit_length = ffx_variants[i].bit_length;
            int len = (bit_length + 7) / 8;
            /* test that encoding works and last byte is correct */
            FUNC5(ffx_enc, ffx_test_iv);
            FUNC3(ffx_enc, encrypted, ffx_test_source, len);
            FUNC2((encrypted[len - 1] & ffx_test_mask[bit_length % 8]) == (ffx_test_source[len - 1] & ffx_test_mask[bit_length % 8]));
            /* Test that decoding with good key and IV works*/
            FUNC5(ffx_dec, ffx_test_iv);
            FUNC3(ffx_dec, result, encrypted, len);
            FUNC2(FUNC1(ffx_test_source, result, len) == 0);
            /* Test that decoding with bad IV fails */
            FUNC5(ffx_dec, ffx_test_bad_iv);
            FUNC3(ffx_dec, result, encrypted, len);
            FUNC2(FUNC1(ffx_test_source, result, len) != 0);
            /* Test that decoding with bad key fails */
            FUNC5(ffx_dec_bad, ffx_test_iv);
            FUNC3(ffx_dec_bad, result, encrypted, len);
            FUNC2(FUNC1(ffx_test_source, result, len) != 0);
        }
        if (ffx_enc != NULL) {
            FUNC4(ffx_enc);
        }
        if (ffx_dec != NULL) {
            FUNC4(ffx_dec);
        }
        if (ffx_dec_bad != NULL) {
            FUNC4(ffx_dec_bad);
        }
    }

    /* Test the direct usage of the API with the "ptls_ffx_new" function.
     * The test verifies that ptls_ffx_new is compatible with
     * creating an ffx variant with the macro, then creating the cipher.
     */
    FUNC0(ffx_variants[2].bit_length == 53); /* assumes that ffx_variants[0] is ffx_aes128ctr_b53_r4 */
    ffx_enc = FUNC7(&ptls_minicrypto_aes128ctr, 1, 4, 53, ffx_test_key);
    ffx_dec = FUNC6(ffx_variants[2].algo, 0, ffx_test_key);
    FUNC2(ffx_enc != NULL && ffx_dec != NULL);
    if (ffx_enc != NULL && ffx_dec != NULL) {
        FUNC5(ffx_enc, ffx_test_iv);
        FUNC3(ffx_enc, encrypted, ffx_test_source, 7);
        FUNC5(ffx_dec, ffx_test_iv);
        FUNC3(ffx_dec, result, encrypted, 7);
        FUNC2(FUNC1(ffx_test_source, result, 7) == 0);
    }
    if (ffx_enc != NULL) {
        FUNC4(ffx_enc);
    }
    if (ffx_dec != NULL) {
        FUNC4(ffx_dec);
    }
}