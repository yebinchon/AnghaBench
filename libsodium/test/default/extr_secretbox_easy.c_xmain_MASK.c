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
 int crypto_secretbox_MACBYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  firstkey ; 
 unsigned char* m ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nonce ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 size_t FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 scalar_t__ FUNC9 (int) ; 

int
FUNC10(void)
{
    unsigned char *c;
    unsigned char *mac;
    size_t         i;

    c   = (unsigned char *) FUNC9(131 + crypto_secretbox_MACBYTES + 1);
    mac = (unsigned char *) FUNC9(crypto_secretbox_MACBYTES);
    FUNC0(c != NULL && mac != NULL);

    FUNC2(c, m, 131, nonce, firstkey);
    for (i = 0; i < 131 + crypto_secretbox_MACBYTES; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i]);
    }
    FUNC6("\n");

    FUNC1(c, mac, m, 131, nonce, firstkey);
    for (i = 0; i < crypto_secretbox_MACBYTES; ++i) {
        FUNC6(",0x%02x", (unsigned int) mac[i]);
    }
    for (i = 0; i < 131; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i]);
    }
    FUNC6("\n");

    /* Same test, with c and m overlapping */

    FUNC4(c + 1, m, 131);
    FUNC2(c, c + 1, 131, nonce, firstkey);
    for (i = 0; i < 131 + crypto_secretbox_MACBYTES; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i]);
    }
    FUNC6("\n");

    FUNC4(c, m, 131);
    FUNC2(c + 1, c, 131, nonce, firstkey);
    for (i = 0; i < 131 + crypto_secretbox_MACBYTES; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i + 1]);
    }
    FUNC6("\n");

    FUNC4(c, m, 131);
    FUNC2(c, c, 131, nonce, firstkey);
    for (i = 0; i < 131 + crypto_secretbox_MACBYTES; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i]);
    }
    FUNC6("\n");

    FUNC0(FUNC2(c, m, 0, nonce, firstkey) == 0);

    /* Null message */

    FUNC2(c, c, 0, nonce, firstkey);
    for (i = 0; i < crypto_secretbox_MACBYTES + 1; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i]);
    }
    FUNC6("\n");
    if (FUNC3(c, c, crypto_secretbox_MACBYTES, nonce,
                                   firstkey) != 0) {
        FUNC6("Null crypto_secretbox_open_easy() failed\n");
    }
    for (i = 0; i < crypto_secretbox_MACBYTES + 1; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i]);
    }
    FUNC6("\n");
    c[FUNC7(crypto_secretbox_MACBYTES)]++;
    if (FUNC3(c, c, crypto_secretbox_MACBYTES, nonce,
                                   firstkey) != -1) {
        FUNC6("Null tampered crypto_secretbox_open_easy() failed\n");
    }

    /* No overlap, but buffers are next to each other */

    FUNC5(c, 0, 131 + crypto_secretbox_MACBYTES + 1);
    FUNC4(c, m, 20);
    FUNC2(c, c + 10, 10, nonce, firstkey);
    for (i = 0; i < 10 + crypto_secretbox_MACBYTES; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i]);
    }
    FUNC6("\n");

    FUNC5(c, 0, 131 + crypto_secretbox_MACBYTES + 1);
    FUNC4(c, m, 20);
    FUNC2(c + 10, c, 10, nonce, firstkey);
    for (i = 0; i < 10 + crypto_secretbox_MACBYTES; ++i) {
        FUNC6(",0x%02x", (unsigned int) c[i]);
    }
    FUNC6("\n");

    FUNC8(mac);
    FUNC8(c);

    return 0;
}