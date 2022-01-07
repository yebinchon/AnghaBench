
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int secp256k1_gej ;
typedef int secp256k1_ge_storage ;
typedef int secp256k1_ge ;
typedef int secp256k1_fe ;
struct TYPE_4__ {int *** prec; } ;
typedef TYPE_1__ secp256k1_ecmult_gen_context ;


 int ECMULT_GEN_PREC_B ;
 int ECMULT_GEN_PREC_G ;
 int ECMULT_GEN_PREC_N ;
 size_t SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE ;
 int VERIFY_CHECK (int) ;
 scalar_t__ manual_alloc (void**,size_t const,void* const,size_t const) ;
 int secp256k1_ecmult_gen_blind (TYPE_1__*,int *) ;
 scalar_t__ secp256k1_ecmult_static_context ;
 int secp256k1_fe_set_b32 (int *,unsigned char const*) ;
 int secp256k1_ge_const_g ;
 int secp256k1_ge_set_all_gej_var (int *,int *,int) ;
 int secp256k1_ge_set_xo_var (int *,int *,int ) ;
 int secp256k1_ge_to_storage (int *,int *) ;
 int secp256k1_gej_add_ge_var (int *,int *,int *,int *) ;
 int secp256k1_gej_add_var (int *,int *,int *,int *) ;
 int secp256k1_gej_double_var (int *,int *,int *) ;
 int secp256k1_gej_neg (int *,int *) ;
 int secp256k1_gej_set_ge (int *,int *) ;

__attribute__((used)) static void secp256k1_ecmult_gen_context_build(secp256k1_ecmult_gen_context *ctx, void **prealloc) {

    secp256k1_ge prec[ECMULT_GEN_PREC_N * ECMULT_GEN_PREC_G];
    secp256k1_gej gj;
    secp256k1_gej nums_gej;
    int i, j;
    size_t const prealloc_size = SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE;
    void* const base = *prealloc;


    if (ctx->prec != ((void*)0)) {
        return;
    }

    ctx->prec = (secp256k1_ge_storage (*)[ECMULT_GEN_PREC_N][ECMULT_GEN_PREC_G])manual_alloc(prealloc, prealloc_size, base, prealloc_size);


    secp256k1_gej_set_ge(&gj, &secp256k1_ge_const_g);


    {
        static const unsigned char nums_b32[33] = "The scalar for this x is unknown";
        secp256k1_fe nums_x;
        secp256k1_ge nums_ge;
        int r;
        r = secp256k1_fe_set_b32(&nums_x, nums_b32);
        (void)r;
        VERIFY_CHECK(r);
        r = secp256k1_ge_set_xo_var(&nums_ge, &nums_x, 0);
        (void)r;
        VERIFY_CHECK(r);
        secp256k1_gej_set_ge(&nums_gej, &nums_ge);

        secp256k1_gej_add_ge_var(&nums_gej, &nums_gej, &secp256k1_ge_const_g, ((void*)0));
    }


    {
        secp256k1_gej precj[ECMULT_GEN_PREC_N * ECMULT_GEN_PREC_G];
        secp256k1_gej gbase;
        secp256k1_gej numsbase;
        gbase = gj;
        numsbase = nums_gej;
        for (j = 0; j < ECMULT_GEN_PREC_N; j++) {

            precj[j*ECMULT_GEN_PREC_G] = numsbase;
            for (i = 1; i < ECMULT_GEN_PREC_G; i++) {
                secp256k1_gej_add_var(&precj[j*ECMULT_GEN_PREC_G + i], &precj[j*ECMULT_GEN_PREC_G + i - 1], &gbase, ((void*)0));
            }

            for (i = 0; i < ECMULT_GEN_PREC_B; i++) {
                secp256k1_gej_double_var(&gbase, &gbase, ((void*)0));
            }

            secp256k1_gej_double_var(&numsbase, &numsbase, ((void*)0));
            if (j == ECMULT_GEN_PREC_N - 2) {

                secp256k1_gej_neg(&numsbase, &numsbase);
                secp256k1_gej_add_var(&numsbase, &numsbase, &nums_gej, ((void*)0));
            }
        }
        secp256k1_ge_set_all_gej_var(prec, precj, ECMULT_GEN_PREC_N * ECMULT_GEN_PREC_G);
    }
    for (j = 0; j < ECMULT_GEN_PREC_N; j++) {
        for (i = 0; i < ECMULT_GEN_PREC_G; i++) {
            secp256k1_ge_to_storage(&(*ctx->prec)[j][i], &prec[j*ECMULT_GEN_PREC_G + i]);
        }
    }




    secp256k1_ecmult_gen_blind(ctx, ((void*)0));
}
