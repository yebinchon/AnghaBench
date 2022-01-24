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
 scalar_t__ crypto_core_ed25519_BYTES ; 
 scalar_t__ crypto_core_ed25519_NONREDUCEDSCALARBYTES ; 
 scalar_t__ crypto_core_ed25519_SCALARBYTES ; 
 int crypto_core_ed25519_UNIFORMBYTES ; 
 scalar_t__ crypto_core_ristretto255_BYTES ; 
 scalar_t__ crypto_core_ristretto255_HASHBYTES ; 
 scalar_t__ crypto_core_ristretto255_NONREDUCEDSCALARBYTES ; 
 scalar_t__ crypto_core_ristretto255_SCALARBYTES ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(void)
{
    FUNC6();
    FUNC7();
    FUNC8();
    FUNC9();

    FUNC0(crypto_core_ristretto255_BYTES == FUNC1());
    FUNC0(crypto_core_ristretto255_SCALARBYTES == FUNC4());
    FUNC0(crypto_core_ristretto255_NONREDUCEDSCALARBYTES == FUNC3());
    FUNC0(crypto_core_ristretto255_NONREDUCEDSCALARBYTES >= crypto_core_ristretto255_SCALARBYTES);
    FUNC0(crypto_core_ristretto255_HASHBYTES == FUNC2());
    FUNC0(crypto_core_ristretto255_HASHBYTES >= crypto_core_ristretto255_BYTES);
    FUNC0(crypto_core_ristretto255_BYTES == crypto_core_ed25519_BYTES);
    FUNC0(crypto_core_ristretto255_SCALARBYTES == crypto_core_ed25519_SCALARBYTES);
    FUNC0(crypto_core_ristretto255_NONREDUCEDSCALARBYTES == crypto_core_ed25519_NONREDUCEDSCALARBYTES);
    FUNC0(crypto_core_ristretto255_HASHBYTES >= 2 * crypto_core_ed25519_UNIFORMBYTES);

    FUNC5("OK\n");

    return 0;
}