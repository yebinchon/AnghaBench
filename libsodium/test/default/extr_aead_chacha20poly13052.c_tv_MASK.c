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
struct TYPE_2__ {char* outcome; int /*<<< orphan*/  detached_ciphertext_hex; int /*<<< orphan*/  mac_hex; int /*<<< orphan*/  ad_hex; int /*<<< orphan*/  message_hex; int /*<<< orphan*/  nonce_hex; int /*<<< orphan*/  key_hex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int crypto_aead_chacha20poly1305_ietf_ABYTES ; 
 int crypto_aead_chacha20poly1305_ietf_KEYBYTES ; 
 int crypto_aead_chacha20poly1305_ietf_NPUBBYTES ; 
 scalar_t__ FUNC1 (unsigned char*,int /*<<< orphan*/ *,unsigned char*,size_t,unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* tests ; 

__attribute__((used)) static int
FUNC9(void)
{
    unsigned char *ad;
    unsigned char *decrypted;
    unsigned char *detached_ciphertext;
    unsigned char *key;
    unsigned char *message;
    unsigned char *mac;
    unsigned char *nonce;
    size_t         ad_len;
    size_t         detached_ciphertext_len;
    size_t         message_len;
    unsigned int   i;

    key = (unsigned char *) FUNC6(
        crypto_aead_chacha20poly1305_ietf_KEYBYTES);
    nonce = (unsigned char *) FUNC6(
        crypto_aead_chacha20poly1305_ietf_NPUBBYTES);
    mac = (unsigned char *) FUNC6(
        crypto_aead_chacha20poly1305_ietf_ABYTES);

    for (i = 0U; i < (sizeof tests) / (sizeof tests[0]); i++) {
        FUNC0(FUNC8(tests[i].key_hex) ==
               2 * crypto_aead_chacha20poly1305_ietf_KEYBYTES);
        FUNC5(key, crypto_aead_chacha20poly1305_ietf_KEYBYTES,
                       tests[i].key_hex, FUNC8(tests[i].key_hex), NULL, NULL,
                       NULL);

        FUNC0(FUNC8(tests[i].nonce_hex) ==
               2 * crypto_aead_chacha20poly1305_ietf_NPUBBYTES);
        FUNC5(nonce, crypto_aead_chacha20poly1305_ietf_NPUBBYTES,
                       tests[i].nonce_hex, FUNC8(tests[i].nonce_hex), NULL,
                       NULL, NULL);

        message_len = FUNC8(tests[i].message_hex) / 2;
        message     = (unsigned char *) FUNC6(message_len);
        FUNC5(message, message_len, tests[i].message_hex,
                       FUNC8(tests[i].message_hex), NULL, NULL, NULL);

        ad_len = FUNC8(tests[i].ad_hex) / 2;
        ad     = (unsigned char *) FUNC6(ad_len);
        FUNC5(ad, ad_len, tests[i].ad_hex, FUNC8(tests[i].ad_hex),
                       NULL, NULL, NULL);

        detached_ciphertext_len = message_len;
        FUNC0(FUNC8(tests[i].detached_ciphertext_hex) == 2 * message_len);
        FUNC0(FUNC8(tests[i].mac_hex) ==
               2 * crypto_aead_chacha20poly1305_ietf_ABYTES);
        FUNC5(mac, crypto_aead_chacha20poly1305_ietf_ABYTES,
                       tests[i].mac_hex, FUNC8(tests[i].mac_hex), NULL, NULL,
                       NULL);

        detached_ciphertext =
            (unsigned char *) FUNC6(detached_ciphertext_len);
        FUNC5(detached_ciphertext, detached_ciphertext_len,
                       tests[i].detached_ciphertext_hex,
                       FUNC8(tests[i].detached_ciphertext_hex), NULL, NULL,
                       NULL);

        decrypted = (unsigned char *) FUNC6(message_len);
        if (FUNC1(
                decrypted, NULL, detached_ciphertext, detached_ciphertext_len,
                mac, ad, ad_len, nonce, key) == 0) {
            if (FUNC7(tests[i].outcome, "valid") != 0) {
                FUNC3("*** test case %u succeeded, was supposed to be %s\n", i,
                       tests[i].outcome);
            }
            if (FUNC2(decrypted, message, message_len) != 0) {
                FUNC3("Incorrect decryption of test vector #%u\n",
                       (unsigned int) i);
            }
        } else {
            if (FUNC7(tests[i].outcome, "invalid") != 0) {
                FUNC3("*** test case %u failed, was supposed to be %s\n", i,
                       tests[i].outcome);
            }
        }

        FUNC4(message);
        FUNC4(ad);
        FUNC4(decrypted);
        FUNC4(detached_ciphertext);
    }

    FUNC4(key);
    FUNC4(mac);
    FUNC4(nonce);

    return 0;
}