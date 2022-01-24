#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ *** prec; } ;
typedef  TYPE_1__ secp256k1_ecmult_gen_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ECMULT_GEN_PREC_G ; 
 int ECMULT_GEN_PREC_N ; 
 int /*<<< orphan*/  SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_error_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * stderr ; 

int FUNC9(int argc, char **argv) {
    secp256k1_ecmult_gen_context ctx;
    void *prealloc, *base;
    int inner;
    int outer;
    FILE* fp;

    (void)argc;
    (void)argv;

    fp = FUNC3("src/ecmult_static_context.h","w");
    if (fp == NULL) {
        FUNC4(stderr, "Could not open src/ecmult_static_context.h for writing!\n");
        return -1;
    }

    FUNC4(fp, "#ifndef _SECP256K1_ECMULT_STATIC_CONTEXT_\n");
    FUNC4(fp, "#define _SECP256K1_ECMULT_STATIC_CONTEXT_\n");
    FUNC4(fp, "#include \"src/group.h\"\n");
    FUNC4(fp, "#define SC SECP256K1_GE_STORAGE_CONST\n");
    FUNC4(fp, "#if ECMULT_GEN_PREC_N != %d || ECMULT_GEN_PREC_G != %d\n", ECMULT_GEN_PREC_N, ECMULT_GEN_PREC_G);
    FUNC4(fp, "   #error configuration mismatch, invalid ECMULT_GEN_PREC_N, ECMULT_GEN_PREC_G. Try deleting ecmult_static_context.h before the build.\n");
    FUNC4(fp, "#endif\n");
    FUNC4(fp, "static const secp256k1_ge_storage secp256k1_ecmult_static_context[ECMULT_GEN_PREC_N][ECMULT_GEN_PREC_G] = {\n");

    base = FUNC1(&default_error_callback, SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE);
    prealloc = base;
    FUNC8(&ctx);
    FUNC6(&ctx, &prealloc);
    for(outer = 0; outer != ECMULT_GEN_PREC_N; outer++) {
        FUNC4(fp,"{\n");
        for(inner = 0; inner != ECMULT_GEN_PREC_G; inner++) {
            FUNC4(fp,"    SC(%uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu)", FUNC0((*ctx.prec)[outer][inner]));
            if (inner != ECMULT_GEN_PREC_G - 1) {
                FUNC4(fp,",\n");
            } else {
                FUNC4(fp,"\n");
            }
        }
        if (outer != ECMULT_GEN_PREC_N - 1) {
            FUNC4(fp,"},\n");
        } else {
            FUNC4(fp,"}\n");
        }
    }
    FUNC4(fp,"};\n");
    FUNC7(&ctx);
    FUNC5(base);

    FUNC4(fp, "#undef SC\n");
    FUNC4(fp, "#endif\n");
    FUNC2(fp);

    return 0;
}