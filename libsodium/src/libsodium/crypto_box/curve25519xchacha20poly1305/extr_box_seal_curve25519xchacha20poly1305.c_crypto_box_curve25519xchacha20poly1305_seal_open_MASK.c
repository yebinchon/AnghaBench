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
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,unsigned char const*) ; 
 int crypto_box_curve25519xchacha20poly1305_NONCEBYTES ; 
 unsigned long long crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES ; 
 unsigned long long crypto_box_curve25519xchacha20poly1305_SEALBYTES ; 
 int FUNC2 (unsigned char*,unsigned char const*,unsigned long long,unsigned char*,unsigned char const*,unsigned char const*) ; 

int
FUNC3(unsigned char *m, const unsigned char *c,
                                                 unsigned long long clen,
                                                 const unsigned char *pk,
                                                 const unsigned char *sk)
{
    unsigned char nonce[crypto_box_curve25519xchacha20poly1305_NONCEBYTES];

    if (clen < crypto_box_curve25519xchacha20poly1305_SEALBYTES) {
        return -1;
    }
    FUNC1(nonce, c, pk);

    FUNC0(crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES <
                    crypto_box_curve25519xchacha20poly1305_SEALBYTES);

    return FUNC2(
         m, c + crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES,
         clen - crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES,
         nonce, c, sk);
}