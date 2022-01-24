#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/ * dec; int /*<<< orphan*/ * enc; } ;
struct st_quic_keyset_t {TYPE_1__ address_token; int /*<<< orphan*/ * cid; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ ptls_iovec_t ;
typedef  int /*<<< orphan*/  master_digestbuf ;
typedef  int /*<<< orphan*/  keybuf ;
struct TYPE_12__ {int /*<<< orphan*/  key_size; } ;

/* Variables and functions */
 int PTLS_MAX_DIGEST_SIZE ; 
 int PTLS_MAX_SECRET_SIZE ; 
 int /*<<< orphan*/  PTLS_SHA256_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__,char*,TYPE_2__,char*) ; 
 TYPE_2__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptls_openssl_aes128ecb ; 
 TYPE_4__ ptls_openssl_aes128gcm ; 
 int /*<<< orphan*/  ptls_openssl_bfecb ; 
 int /*<<< orphan*/  ptls_openssl_sha256 ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__) ; 

__attribute__((used)) static void FUNC7(struct st_quic_keyset_t *keyset, uint8_t name, ptls_iovec_t master_secret)
{
    uint8_t master_digestbuf[PTLS_MAX_DIGEST_SIZE], keybuf[PTLS_MAX_SECRET_SIZE];
    int ret;

    if (master_secret.len > PTLS_SHA256_DIGEST_SIZE) {
        FUNC2(&ptls_openssl_sha256, master_digestbuf, master_secret.base, master_secret.len);
        master_secret = FUNC5(master_digestbuf, PTLS_SHA256_DIGEST_SIZE);
    }

    keyset->name = name;
    keyset->cid =
        FUNC6(&ptls_openssl_bfecb, &ptls_openssl_aes128ecb, &ptls_openssl_sha256, master_secret);
    FUNC0(keyset->cid != NULL);
    ret = FUNC4(&ptls_openssl_sha256, keybuf, ptls_openssl_aes128gcm.key_size, master_secret, "address-token",
                                 FUNC5(NULL, 0), "");
    FUNC0(ret == 0);
    keyset->address_token.enc = FUNC1(&ptls_openssl_aes128gcm, &ptls_openssl_sha256, 1, keybuf, "");
    FUNC0(keyset->address_token.enc != NULL);
    keyset->address_token.dec = FUNC1(&ptls_openssl_aes128gcm, &ptls_openssl_sha256, 0, keybuf, "");
    FUNC0(keyset->address_token.dec != NULL);

    FUNC3(master_digestbuf, sizeof(master_digestbuf));
    FUNC3(keybuf, sizeof(keybuf));
}