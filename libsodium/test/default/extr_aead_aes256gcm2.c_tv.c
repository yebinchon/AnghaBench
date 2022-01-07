
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* outcome; int detached_ciphertext_hex; int mac_hex; int ad_hex; int message_hex; int nonce_hex; int key_hex; } ;


 int assert (int) ;
 int crypto_aead_aes256gcm_ABYTES ;
 int crypto_aead_aes256gcm_KEYBYTES ;
 int crypto_aead_aes256gcm_NPUBBYTES ;
 scalar_t__ crypto_aead_aes256gcm_decrypt_detached (unsigned char*,int *,unsigned char*,size_t,unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,size_t) ;
 int printf (char*,unsigned int,...) ;
 int sodium_free (unsigned char*) ;
 int sodium_hex2bin (unsigned char*,size_t,int ,int,int *,int *,int *) ;
 scalar_t__ sodium_malloc (size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (int ) ;
 TYPE_1__* tests ;

__attribute__((used)) static int
tv(void)
{
    unsigned char *ad;
    unsigned char *decrypted;
    unsigned char *detached_ciphertext;
    unsigned char *key;
    unsigned char *message;
    unsigned char *mac;
    unsigned char *nonce;
    size_t ad_len;
    size_t detached_ciphertext_len;
    size_t message_len;
    unsigned int i;

    key = (unsigned char *) sodium_malloc(crypto_aead_aes256gcm_KEYBYTES);
    nonce = (unsigned char *) sodium_malloc(crypto_aead_aes256gcm_NPUBBYTES);
    mac = (unsigned char *) sodium_malloc(crypto_aead_aes256gcm_ABYTES);

    for (i = 0U; i < (sizeof tests) / (sizeof tests[0]); i++) {
        assert(strlen(tests[i].key_hex) == 2 * crypto_aead_aes256gcm_KEYBYTES);
        sodium_hex2bin(key, crypto_aead_aes256gcm_KEYBYTES, tests[i].key_hex,
                       strlen(tests[i].key_hex), ((void*)0), ((void*)0), ((void*)0));

        assert(strlen(tests[i].nonce_hex) ==
               2 * crypto_aead_aes256gcm_NPUBBYTES);
        sodium_hex2bin(nonce, crypto_aead_aes256gcm_NPUBBYTES,
                       tests[i].nonce_hex, strlen(tests[i].nonce_hex), ((void*)0),
                       ((void*)0), ((void*)0));

        message_len = strlen(tests[i].message_hex) / 2;
        message = (unsigned char *) sodium_malloc(message_len);
        sodium_hex2bin(message, message_len, tests[i].message_hex,
                       strlen(tests[i].message_hex), ((void*)0), ((void*)0), ((void*)0));

        ad_len = strlen(tests[i].ad_hex) / 2;
        ad = (unsigned char *) sodium_malloc(ad_len);
        sodium_hex2bin(ad, ad_len, tests[i].ad_hex, strlen(tests[i].ad_hex),
                       ((void*)0), ((void*)0), ((void*)0));

        detached_ciphertext_len = message_len;
        assert(strlen(tests[i].detached_ciphertext_hex) == 2 * message_len);
        assert(strlen(tests[i].mac_hex) == 2 * crypto_aead_aes256gcm_ABYTES);
        sodium_hex2bin(mac, crypto_aead_aes256gcm_ABYTES, tests[i].mac_hex,
                       strlen(tests[i].mac_hex), ((void*)0), ((void*)0), ((void*)0));

        detached_ciphertext =
            (unsigned char *) sodium_malloc(detached_ciphertext_len);
        sodium_hex2bin(detached_ciphertext, detached_ciphertext_len,
                       tests[i].detached_ciphertext_hex,
                       strlen(tests[i].detached_ciphertext_hex), ((void*)0), ((void*)0),
                       ((void*)0));

        decrypted = (unsigned char *) sodium_malloc(message_len);
        if (crypto_aead_aes256gcm_decrypt_detached(
                decrypted, ((void*)0), detached_ciphertext, detached_ciphertext_len,
                mac, ad, ad_len, nonce, key) == 0) {
            if (strcmp(tests[i].outcome, "valid") != 0) {
                printf("*** test case %u succeeded, was supposed to be %s\n", i,
                       tests[i].outcome);
            }
            if (memcmp(decrypted, message, message_len) != 0) {
                printf("Incorrect decryption of test vector #%u\n",
                       (unsigned int) i);
            }
        } else {
            if (strcmp(tests[i].outcome, "invalid") != 0) {
                printf("*** test case %u failed, was supposed to be %s\n", i,
                       tests[i].outcome);
            }
        }

        sodium_free(message);
        sodium_free(ad);
        sodium_free(decrypted);
        sodium_free(detached_ciphertext);
    }

    sodium_free(key);
    sodium_free(mac);
    sodium_free(nonce);

    return 0;
}
