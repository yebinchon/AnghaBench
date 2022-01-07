
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_scratch ;
struct TYPE_2__ {int error_callback; } ;


 int ALIGNMENT ;
 int STRAUSS_SCRATCH_OBJECTS ;
 TYPE_1__* ctx ;
 int secp256k1_ecmult_multi_var ;
 int secp256k1_ecmult_pippenger_batch_single ;
 int secp256k1_ecmult_strauss_batch_single ;
 int * secp256k1_scratch_create (int *,int) ;
 int secp256k1_scratch_destroy (int *,int *) ;
 int secp256k1_strauss_scratch_size (int) ;
 int test_ecmult_multi (int *,int ) ;
 int test_ecmult_multi_batch_single (int ) ;
 int test_ecmult_multi_batch_size_helper () ;
 int test_ecmult_multi_batching () ;
 int test_ecmult_multi_pippenger_max_points () ;
 int test_secp256k1_pippenger_bucket_window_inv () ;

void run_ecmult_multi_tests(void) {
    secp256k1_scratch *scratch;

    test_secp256k1_pippenger_bucket_window_inv();
    test_ecmult_multi_pippenger_max_points();
    scratch = secp256k1_scratch_create(&ctx->error_callback, 819200);
    test_ecmult_multi(scratch, secp256k1_ecmult_multi_var);
    test_ecmult_multi(((void*)0), secp256k1_ecmult_multi_var);
    test_ecmult_multi(scratch, secp256k1_ecmult_pippenger_batch_single);
    test_ecmult_multi_batch_single(secp256k1_ecmult_pippenger_batch_single);
    test_ecmult_multi(scratch, secp256k1_ecmult_strauss_batch_single);
    test_ecmult_multi_batch_single(secp256k1_ecmult_strauss_batch_single);
    secp256k1_scratch_destroy(&ctx->error_callback, scratch);


    scratch = secp256k1_scratch_create(&ctx->error_callback, secp256k1_strauss_scratch_size(1) + STRAUSS_SCRATCH_OBJECTS*ALIGNMENT);
    test_ecmult_multi(scratch, secp256k1_ecmult_multi_var);
    secp256k1_scratch_destroy(&ctx->error_callback, scratch);

    test_ecmult_multi_batch_size_helper();
    test_ecmult_multi_batching();
}
