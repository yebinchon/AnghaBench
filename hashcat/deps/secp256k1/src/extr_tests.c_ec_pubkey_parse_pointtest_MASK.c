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
typedef  unsigned char secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  pubkey ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SECP256K1_EC_COMPRESSED ; 
 int /*<<< orphan*/  SECP256K1_EC_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/ * counting_illegal_callback_fn ; 
 int /*<<< orphan*/  ctx ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char*,unsigned char*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned char*,size_t*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ *) ; 

void FUNC11(const unsigned char *input, int xvalid, int yvalid) {
    unsigned char pubkeyc[65];
    secp256k1_pubkey pubkey;
    secp256k1_ge ge;
    size_t pubkeyclen;
    int32_t ecount;
    ecount = 0;
    FUNC6(ctx, counting_illegal_callback_fn, &ecount);
    for (pubkeyclen = 3; pubkeyclen <= 65; pubkeyclen++) {
        /* Smaller sizes are tested exhaustively elsewhere. */
        int32_t i;
        FUNC4(&pubkeyc[1], input, 64);
        FUNC2(&pubkeyc[pubkeyclen], 65 - pubkeyclen);
        for (i = 0; i < 256; i++) {
            /* Try all type bytes. */
            int xpass;
            int ypass;
            int ysign;
            pubkeyc[0] = i;
            /* What sign does this point have? */
            ysign = (input[63] & 1) + 2;
            /* For the current type (i) do we expect parsing to work? Handled all of compressed/uncompressed/hybrid. */
            xpass = xvalid && (pubkeyclen == 33) && ((i & 254) == 2);
            /* Do we expect a parse and re-serialize as uncompressed to give a matching y? */
            ypass = xvalid && yvalid && ((i & 4) == ((pubkeyclen == 65) << 2)) &&
                ((i == 4) || ((i & 251) == ysign)) && ((pubkeyclen == 33) || (pubkeyclen == 65));
            if (xpass || ypass) {
                /* These cases must parse. */
                unsigned char pubkeyo[65];
                size_t outl;
                FUNC5(&pubkey, 0, sizeof(pubkey));
                FUNC2(&pubkey, sizeof(pubkey));
                ecount = 0;
                FUNC0(FUNC7(ctx, &pubkey, pubkeyc, pubkeyclen) == 1);
                FUNC1(&pubkey, sizeof(pubkey));
                outl = 65;
                FUNC2(pubkeyo, 65);
                FUNC0(FUNC8(ctx, pubkeyo, &outl, &pubkey, SECP256K1_EC_COMPRESSED) == 1);
                FUNC1(pubkeyo, outl);
                FUNC0(outl == 33);
                FUNC0(FUNC3(&pubkeyo[1], &pubkeyc[1], 32) == 0);
                FUNC0((pubkeyclen != 33) || (pubkeyo[0] == pubkeyc[0]));
                if (ypass) {
                    /* This test isn't always done because we decode with alternative signs, so the y won't match. */
                    FUNC0(pubkeyo[0] == ysign);
                    FUNC0(FUNC9(ctx, &ge, &pubkey) == 1);
                    FUNC5(&pubkey, 0, sizeof(pubkey));
                    FUNC2(&pubkey, sizeof(pubkey));
                    FUNC10(&pubkey, &ge);
                    FUNC1(&pubkey, sizeof(pubkey));
                    outl = 65;
                    FUNC2(pubkeyo, 65);
                    FUNC0(FUNC8(ctx, pubkeyo, &outl, &pubkey, SECP256K1_EC_UNCOMPRESSED) == 1);
                    FUNC1(pubkeyo, outl);
                    FUNC0(outl == 65);
                    FUNC0(pubkeyo[0] == 4);
                    FUNC0(FUNC3(&pubkeyo[1], input, 64) == 0);
                }
                FUNC0(ecount == 0);
            } else {
                /* These cases must fail to parse. */
                FUNC5(&pubkey, 0xfe, sizeof(pubkey));
                ecount = 0;
                FUNC2(&pubkey, sizeof(pubkey));
                FUNC0(FUNC7(ctx, &pubkey, pubkeyc, pubkeyclen) == 0);
                FUNC1(&pubkey, sizeof(pubkey));
                FUNC0(ecount == 0);
                FUNC0(FUNC9(ctx, &ge, &pubkey) == 0);
                FUNC0(ecount == 1);
            }
        }
    }
    FUNC6(ctx, NULL, NULL);
}