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
 int /*<<< orphan*/  C ; 
 int /*<<< orphan*/  NONCESUFFIX ; 
 int /*<<< orphan*/  SECONDKEY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ crypto_core_salsa20_CONSTBYTES ; 
 scalar_t__ crypto_core_salsa20_INPUTBYTES ; 
 scalar_t__ crypto_core_salsa20_KEYBYTES ; 
 scalar_t__ crypto_core_salsa20_OUTPUTBYTES ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 scalar_t__ FUNC12 (int) ; 

int
FUNC13(void)
{
    unsigned char *secondkey;
    unsigned char *c;
    unsigned char *noncesuffix;
    unsigned char *in;
    unsigned char *output;
    unsigned char *h;
    size_t         output_len = 64 * 256 * 256;
    size_t         pos = 0;
    int            i;

    pos = 0;
    secondkey = (unsigned char *) FUNC12(32);
    FUNC9(secondkey, SECONDKEY, 32);
    noncesuffix = (unsigned char *) FUNC12(8);
    FUNC9(noncesuffix, NONCESUFFIX, 8);
    c = (unsigned char *) FUNC12(16);
    FUNC9(c, C, 16);
    in = (unsigned char *) FUNC12(16);
    output = (unsigned char *) FUNC12(output_len);
    h = (unsigned char *) FUNC12(32);

    for (i = 0; i < 8; i++) {
        in[i] = noncesuffix[i];
    }
    for (; i < 16; i++) {
        in[i] = 0;
    }
    do {
        do {
            FUNC1(output + pos, in, secondkey, c);
            pos += 64;
            in[8]++;
        } while (in[8] != 0);
        in[9]++;
    } while (in[9] != 0);

    FUNC8(h, output, output_len);

    for (i = 0; i < 32; ++i) {
        FUNC10("%02x", h[i]);
    }
    FUNC10("\n");

#ifndef SODIUM_LIBRARY_MINIMAL
    pos = 0;
    do {
        do {
            FUNC2(output + pos, in, secondkey, c);
            pos += 64;
            in[8]++;
        } while (in[8] != 0);
        in[9]++;
    } while (in[9] != 0);

    FUNC8(h, output, output_len);

    for (i = 0; i < 32; ++i) {
        FUNC10("%02x", h[i]);
    }
    FUNC10("\n");

    pos = 0;
    do {
        do {
            FUNC3(output + pos, in, secondkey, c);
            pos += 64;
            in[8]++;
        } while (in[8] != 0);
        in[9]++;
    } while (in[9] != 0);

    FUNC8(h, output, output_len);

    for (i = 0; i < 32; ++i) {
        FUNC10("%02x", h[i]);
    }
    FUNC10("\n");
#else
    printf("a4e3147dddd2ba7775939b50208a22eb3277d4e4bad8a1cfbc999c6bd392b638\n"
           "017421baa9959cbe894bd003ec87938254f47c1e757eb66cf89c353d0c2b68de\n");
#endif

    FUNC11(h);
    FUNC11(output);
    FUNC11(in);
    FUNC11(c);
    FUNC11(noncesuffix);
    FUNC11(secondkey);

    FUNC0(FUNC7() == crypto_core_salsa20_OUTPUTBYTES);
    FUNC0(FUNC5() == crypto_core_salsa20_INPUTBYTES);
    FUNC0(FUNC6() == crypto_core_salsa20_KEYBYTES);
    FUNC0(FUNC4() == crypto_core_salsa20_CONSTBYTES);

    return 0;
}