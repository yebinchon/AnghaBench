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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 size_t crypto_secretbox_KEYBYTES ; 
 size_t crypto_secretbox_MACBYTES ; 
 size_t crypto_secretbox_NONCEBYTES ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*) ; 
 int FUNC5 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 scalar_t__ FUNC11 (size_t) ; 

int
FUNC12(void)
{
    unsigned char *m;
    unsigned char *m2;
    unsigned char *c;
    unsigned char *nonce;
    unsigned char *k;
    unsigned char *mac;
    size_t         mlen;
    size_t         i;

    mlen  = (size_t) FUNC9((uint32_t) 10000) + 1U;
    m     = (unsigned char *) FUNC11(mlen);
    m2    = (unsigned char *) FUNC11(mlen);
    c     = (unsigned char *) FUNC11(crypto_secretbox_MACBYTES + mlen);
    nonce = (unsigned char *) FUNC11(crypto_secretbox_NONCEBYTES);
    k     = (unsigned char *) FUNC11(crypto_secretbox_KEYBYTES);
    mac   = (unsigned char *) FUNC11(crypto_secretbox_MACBYTES);
    FUNC2(k);
    FUNC8(m, mlen);
    FUNC8(nonce, crypto_secretbox_NONCEBYTES);
    FUNC1(c, m, (unsigned long long) mlen, nonce, k);
    if (FUNC4(
            m2, c, (unsigned long long) mlen + crypto_secretbox_MACBYTES, nonce,
            k) != 0) {
        FUNC7("crypto_secretbox_open_easy() failed\n");
    }
    FUNC7("%d\n", FUNC5(m, m2, mlen));

    for (i = 0; i < mlen + crypto_secretbox_MACBYTES - 1; i++) {
        if (FUNC4(m2, c, (unsigned long long) i, nonce,
                                       k) == 0) {
            FUNC7("short open() should have failed\n");
            return 1;
        }
    }
    FUNC0(c, mac, m, (unsigned long long) mlen, nonce, k);
    if (FUNC3(NULL, c, mac, (unsigned long long) mlen,
                                       nonce, k) != 0) {
        FUNC7("crypto_secretbox_open_detached() with a NULL message pointer failed\n");
    }
    if (FUNC3(m2, c, mac, (unsigned long long) mlen,
                                       nonce, k) != 0) {
        FUNC7("crypto_secretbox_open_detached() failed\n");
    }
    FUNC7("%d\n", FUNC5(m, m2, mlen));

    FUNC6(c, m, mlen);
    FUNC1(c, c, (unsigned long long) mlen, nonce, k);
    FUNC7("%d\n", FUNC5(m, c, mlen) == 0);
    FUNC7("%d\n", FUNC5(m, c + crypto_secretbox_MACBYTES, mlen) == 0);
    if (FUNC4(
            c, c, (unsigned long long) mlen + crypto_secretbox_MACBYTES, nonce,
            k) != 0) {
        FUNC7("crypto_secretbox_open_easy() failed\n");
    }
    FUNC7("%d\n", FUNC5(m, c, mlen));

    FUNC10(m);
    FUNC10(m2);
    FUNC10(c);
    FUNC10(nonce);
    FUNC10(k);
    FUNC10(mac);

    return 0;
}