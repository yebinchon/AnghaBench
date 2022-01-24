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
typedef  unsigned char uint64_t ;
typedef  int /*<<< orphan*/  seed16 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SECP256K1_CONTEXT_SIGN ; 
 int SECP256K1_CONTEXT_VERIFY ; 
 int count ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (unsigned char**,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 (int) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC46 (unsigned char*) ; 
 scalar_t__ FUNC47 (int) ; 
 int /*<<< orphan*/  FUNC48 (unsigned char*) ; 
 int FUNC49 (char const*,char*,unsigned short*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC50 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned char FUNC51 (int /*<<< orphan*/ *) ; 

int FUNC52(int argc, char **argv) {
    unsigned char seed16[16] = {0};
    unsigned char run32[32] = {0};
    /* find iteration count */
    if (argc > 1) {
        count = FUNC50(argv[1], NULL, 0);
    }

    /* find random seed */
    if (argc > 2) {
        int pos = 0;
        const char* ch = argv[2];
        while (pos < 16 && ch[0] != 0 && ch[1] != 0) {
            unsigned short sh;
            if ((FUNC49(ch, "%2hx", &sh)) == 1) {
                seed16[pos] = sh;
            } else {
                break;
            }
            ch += 2;
            pos++;
        }
    } else {
        FILE *frand = FUNC2("/dev/urandom", "r");
        if ((frand == NULL) || FUNC4(&seed16, 1, sizeof(seed16), frand) != sizeof(seed16)) {
            uint64_t t = FUNC51(NULL) * (uint64_t)1337;
            FUNC3(stderr, "WARNING: could not read 16 bytes from /dev/urandom; falling back to insecure PRNG\n");
            seed16[0] ^= t;
            seed16[1] ^= t >> 8;
            seed16[2] ^= t >> 16;
            seed16[3] ^= t >> 24;
            seed16[4] ^= t >> 32;
            seed16[5] ^= t >> 40;
            seed16[6] ^= t >> 48;
            seed16[7] ^= t >> 56;
        }
        if (frand) {
            FUNC1(frand);
        }
    }
    FUNC48(seed16);

    FUNC5("test count = %i\n", count);
    FUNC5("random seed = %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", seed16[0], seed16[1], seed16[2], seed16[3], seed16[4], seed16[5], seed16[6], seed16[7], seed16[8], seed16[9], seed16[10], seed16[11], seed16[12], seed16[13], seed16[14], seed16[15]);

    /* initialize */
    FUNC6(0);
    FUNC6(1);
    FUNC38();
    ctx = FUNC43(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    if (FUNC47(1)) {
        FUNC46(run32);
        FUNC0(FUNC45(ctx, FUNC47(1) ? run32 : NULL));
    }

    FUNC32();
    FUNC33();

    FUNC39();
    FUNC29();
    FUNC36();

#ifndef USE_NUM_NONE
    /* num tests */
    FUNC30();
#endif

    /* scalar tests */
    FUNC37();

    /* field tests */
    FUNC23();
    FUNC25();
    FUNC24();
    FUNC26();
    FUNC22();
    FUNC40();
    FUNC41();

    /* group tests */
    FUNC27();
    FUNC28();

    /* ecmult tests */
    FUNC42();
    FUNC31();
    FUNC16();
    FUNC18();
    FUNC19();
    FUNC17();
    FUNC20();
    FUNC7();

    /* endomorphism tests */
#ifdef USE_ENDOMORPHISM
    run_endomorphism_tests();
#endif

    /* EC point parser test */
    FUNC8();

    /* EC key edge cases */
    FUNC15();

#ifdef ENABLE_MODULE_ECDH
    /* ecdh tests */
    run_ecdh_tests();
#endif

    /* ecdsa tests */
    FUNC34();
    FUNC10();
    FUNC14();
    FUNC12();
    FUNC11();
#ifdef ENABLE_OPENSSL_TESTS
    run_ecdsa_openssl();
#endif

#ifdef ENABLE_MODULE_RECOVERY
    /* ECDSA pubkey recovery tests */
    run_recovery_tests();
#endif

    FUNC46(run32);
    FUNC5("random run = %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", run32[0], run32[1], run32[2], run32[3], run32[4], run32[5], run32[6], run32[7], run32[8], run32[9], run32[10], run32[11], run32[12], run32[13], run32[14], run32[15]);

    /* shutdown */
    FUNC44(ctx);

    FUNC5("no problems found\n");
    return 0;
}