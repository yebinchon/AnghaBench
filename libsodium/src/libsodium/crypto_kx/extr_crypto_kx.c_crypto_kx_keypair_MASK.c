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
 scalar_t__ crypto_kx_PUBLICKEYBYTES ; 
 scalar_t__ crypto_kx_SECRETKEYBYTES ; 
 scalar_t__ crypto_scalarmult_BYTES ; 
 scalar_t__ crypto_scalarmult_SCALARBYTES ; 
 int FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,scalar_t__) ; 

int
FUNC3(unsigned char pk[crypto_kx_PUBLICKEYBYTES],
                  unsigned char sk[crypto_kx_SECRETKEYBYTES])
{
    FUNC0(crypto_kx_SECRETKEYBYTES == crypto_scalarmult_SCALARBYTES);
    FUNC0(crypto_kx_PUBLICKEYBYTES == crypto_scalarmult_BYTES);

    FUNC2(sk, crypto_kx_SECRETKEYBYTES);
    return FUNC1(pk, sk);
}