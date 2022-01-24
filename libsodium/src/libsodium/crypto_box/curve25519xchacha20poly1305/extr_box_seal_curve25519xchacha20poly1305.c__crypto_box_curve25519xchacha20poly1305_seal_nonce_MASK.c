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
typedef  int /*<<< orphan*/  crypto_generichash_state ;

/* Variables and functions */
 int /*<<< orphan*/  crypto_box_curve25519xchacha20poly1305_NONCEBYTES ; 
 int /*<<< orphan*/  crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(unsigned char *nonce,
                                                   const unsigned char *pk1,
                                                   const unsigned char *pk2)
{
    crypto_generichash_state st;

    FUNC1(&st, NULL, 0U,
                            crypto_box_curve25519xchacha20poly1305_NONCEBYTES);
    FUNC2(&st, pk1,
                              crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES);
    FUNC2(&st, pk2,
                              crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES);
    FUNC0(&st, nonce,
                             crypto_box_curve25519xchacha20poly1305_NONCEBYTES);

    return 0;
}