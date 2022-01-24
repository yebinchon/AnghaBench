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
 scalar_t__ crypto_aead_aegis256_ABYTES ; 
 scalar_t__ crypto_aead_aegis256_KEYBYTES ; 
 scalar_t__ crypto_aead_aegis256_MESSAGEBYTES_MAX ; 
 scalar_t__ crypto_aead_aegis256_NPUBBYTES ; 
 scalar_t__ crypto_aead_aegis256_NSECBYTES ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(void)
{
    if (FUNC2()) {
        FUNC8();
    }
    FUNC0(FUNC3() == crypto_aead_aegis256_KEYBYTES);
    FUNC0(FUNC6() == crypto_aead_aegis256_NSECBYTES);
    FUNC0(FUNC5() == crypto_aead_aegis256_NPUBBYTES);
    FUNC0(FUNC1() == crypto_aead_aegis256_ABYTES);
    FUNC0(FUNC4() == crypto_aead_aegis256_MESSAGEBYTES_MAX);
    FUNC7("OK\n");

    return 0;
}