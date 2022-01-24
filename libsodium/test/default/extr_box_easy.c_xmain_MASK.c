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
 int /*<<< orphan*/  alicesk ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bobpk ; 
 scalar_t__* c ; 
 int crypto_box_MACBYTES ; 
 int FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  guard_page ; 
 int /*<<< orphan*/  m ; 
 int /*<<< orphan*/  nonce ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 size_t FUNC4 (int) ; 

int
FUNC5(void)
{
    size_t i;
    int    ret;

    ret = FUNC1(c, m, 131, nonce, bobpk, alicesk);
    FUNC0(ret == 0);
    for (i = 0; i < 131 + crypto_box_MACBYTES; ++i) {
        FUNC3(",0x%02x", (unsigned int) c[i]);
    }
    FUNC3("\n");

    /* Null message */

    ret = FUNC1(c, guard_page, 0, nonce, bobpk, alicesk);
    FUNC0(ret == 0);
    for (i = 0; i < 1 + crypto_box_MACBYTES; ++i) {
        FUNC3(",0x%02x", (unsigned int) c[i]);
    }
    FUNC3("\n");

    ret =
        FUNC2(c, c, crypto_box_MACBYTES, nonce, bobpk, alicesk);
    FUNC0(ret == 0);
    for (i = 0; i < 1 + crypto_box_MACBYTES; ++i) {
        FUNC3(",0x%02x", (unsigned int) c[i]);
    }
    FUNC3("\n");
    c[FUNC4(crypto_box_MACBYTES)]++;
    ret = FUNC2(c, c, crypto_box_MACBYTES, nonce, bobpk, alicesk);
    FUNC0(ret == -1);

    return 0;
}