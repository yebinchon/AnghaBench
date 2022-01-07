
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
struct TYPE_3__ {int * expected_output; int * output; int * seckeys; int * pubkeys; int * scalars; int ctx; int * scratch; void* ecmult_multi; } ;
typedef TYPE_1__ bench_data ;


 int ITERS ;
 int POINTS ;
 int SECP256K1_CONTEXT_SIGN ;
 int SECP256K1_CONTEXT_VERIFY ;
 int STRAUSS_SCRATCH_OBJECTS ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int generate_scalar (int,int *) ;
 scalar_t__ have_flag (int,char**,char*) ;
 void* malloc (int) ;
 int printf (char*) ;
 int run_test (TYPE_1__*,int,int) ;
 int secp256k1_context_create (int) ;
 int secp256k1_context_destroy (int ) ;
 void* secp256k1_ecmult_multi_var ;
 void* secp256k1_ecmult_pippenger_batch_single ;
 void* secp256k1_ecmult_strauss_batch_single ;
 int secp256k1_ge_const_g ;
 int secp256k1_ge_set_all_gej_var (int *,int *,int) ;
 int secp256k1_gej_double_var (int *,int *,int *) ;
 int secp256k1_gej_set_ge (int *,int *) ;
 int secp256k1_scalar_add (int *,int *,int *) ;
 int secp256k1_scalar_set_int (int *,int) ;
 int * secp256k1_scratch_space_create (int ,size_t) ;
 int secp256k1_scratch_space_destroy (int ,int *) ;
 int secp256k1_strauss_scratch_size (int) ;
 int stderr ;

int main(int argc, char **argv) {
    bench_data data;
    int i, p;
    secp256k1_gej* pubkeys_gej;
    size_t scratch_size;

    data.ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    scratch_size = secp256k1_strauss_scratch_size(POINTS) + STRAUSS_SCRATCH_OBJECTS*16;
    data.scratch = secp256k1_scratch_space_create(data.ctx, scratch_size);
    data.ecmult_multi = secp256k1_ecmult_multi_var;

    if (argc > 1) {
        if(have_flag(argc, argv, "pippenger_wnaf")) {
            printf("Using pippenger_wnaf:\n");
            data.ecmult_multi = secp256k1_ecmult_pippenger_batch_single;
        } else if(have_flag(argc, argv, "strauss_wnaf")) {
            printf("Using strauss_wnaf:\n");
            data.ecmult_multi = secp256k1_ecmult_strauss_batch_single;
        } else if(have_flag(argc, argv, "simple")) {
            printf("Using simple algorithm:\n");
            data.ecmult_multi = secp256k1_ecmult_multi_var;
            secp256k1_scratch_space_destroy(data.ctx, data.scratch);
            data.scratch = ((void*)0);
        } else {
            fprintf(stderr, "%s: unrecognized argument '%s'.\n", argv[0], argv[1]);
            fprintf(stderr, "Use 'pippenger_wnaf', 'strauss_wnaf', 'simple' or no argument to benchmark a combined algorithm.\n");
            return 1;
        }
    }


    data.scalars = malloc(sizeof(secp256k1_scalar) * POINTS);
    data.seckeys = malloc(sizeof(secp256k1_scalar) * POINTS);
    data.pubkeys = malloc(sizeof(secp256k1_ge) * POINTS);
    data.expected_output = malloc(sizeof(secp256k1_gej) * (ITERS + 1));
    data.output = malloc(sizeof(secp256k1_gej) * (ITERS + 1));


    pubkeys_gej = malloc(sizeof(secp256k1_gej) * POINTS);
    secp256k1_gej_set_ge(&pubkeys_gej[0], &secp256k1_ge_const_g);
    secp256k1_scalar_set_int(&data.seckeys[0], 1);
    for (i = 0; i < POINTS; ++i) {
        generate_scalar(i, &data.scalars[i]);
        if (i) {
            secp256k1_gej_double_var(&pubkeys_gej[i], &pubkeys_gej[i - 1], ((void*)0));
            secp256k1_scalar_add(&data.seckeys[i], &data.seckeys[i - 1], &data.seckeys[i - 1]);
        }
    }
    secp256k1_ge_set_all_gej_var(data.pubkeys, pubkeys_gej, POINTS);
    free(pubkeys_gej);

    for (i = 1; i <= 8; ++i) {
        run_test(&data, i, 1);
    }

    for (p = 0; p <= 11; ++p) {
        for (i = 9; i <= 16; ++i) {
            run_test(&data, i << p, 1);
        }
    }
    if (data.scratch != ((void*)0)) {
        secp256k1_scratch_space_destroy(data.ctx, data.scratch);
    }
    secp256k1_context_destroy(data.ctx);
    free(data.scalars);
    free(data.pubkeys);
    free(data.seckeys);
    free(data.output);
    free(data.expected_output);

    return(0);
}
