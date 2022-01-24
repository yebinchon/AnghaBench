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
typedef  int /*<<< orphan*/  crypto_aead_aes256gcm_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ crypto_aead_aes256gcm_ABYTES ; 
 scalar_t__ crypto_aead_aes256gcm_KEYBYTES ; 
 scalar_t__ crypto_aead_aes256gcm_MESSAGEBYTES_MAX ; 
 scalar_t__ crypto_aead_aes256gcm_NPUBBYTES ; 
 scalar_t__ crypto_aead_aes256gcm_NSECBYTES ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(void)
{
    if (FUNC2()) {
        FUNC9();
    }
    FUNC0(FUNC3() == crypto_aead_aes256gcm_KEYBYTES);
    FUNC0(FUNC6() == crypto_aead_aes256gcm_NSECBYTES);
    FUNC0(FUNC5() == crypto_aead_aes256gcm_NPUBBYTES);
    FUNC0(FUNC1() == crypto_aead_aes256gcm_ABYTES);
    FUNC0(FUNC7() >= sizeof(crypto_aead_aes256gcm_state));
    FUNC0(FUNC4() == crypto_aead_aes256gcm_MESSAGEBYTES_MAX);
    FUNC8("OK\n");

    return 0;
}