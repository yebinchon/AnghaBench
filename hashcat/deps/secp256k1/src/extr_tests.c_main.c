
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint64_t ;
typedef int seed16 ;
typedef int FILE ;


 int CHECK (int ) ;
 int SECP256K1_CONTEXT_SIGN ;
 int SECP256K1_CONTEXT_VERIFY ;
 int count ;
 int ctx ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int fread (unsigned char**,int,int,int *) ;
 int printf (char*,...) ;
 int run_context_tests (int) ;
 int run_ec_combine () ;
 int run_ec_pubkey_parse_test () ;
 int run_ecdh_tests () ;
 int run_ecdsa_der_parse () ;
 int run_ecdsa_edge_cases () ;
 int run_ecdsa_end_to_end () ;
 int run_ecdsa_openssl () ;
 int run_ecdsa_sign_verify () ;
 int run_eckey_edge_case_test () ;
 int run_ecmult_chain () ;
 int run_ecmult_const_tests () ;
 int run_ecmult_constants () ;
 int run_ecmult_gen_blind () ;
 int run_ecmult_multi_tests () ;
 int run_endomorphism_tests () ;
 int run_field_convert () ;
 int run_field_inv () ;
 int run_field_inv_all_var () ;
 int run_field_inv_var () ;
 int run_field_misc () ;
 int run_ge () ;
 int run_group_decompress () ;
 int run_hmac_sha256_tests () ;
 int run_num_smalltests () ;
 int run_point_times_order () ;
 int run_rand_bits () ;
 int run_rand_int () ;
 int run_random_pubkeys () ;
 int run_recovery_tests () ;
 int run_rfc6979_hmac_sha256_tests () ;
 int run_scalar_tests () ;
 int run_scratch_tests () ;
 int run_sha256_tests () ;
 int run_sqr () ;
 int run_sqrt () ;
 int run_wnaf () ;
 int secp256k1_context_create (int) ;
 int secp256k1_context_destroy (int ) ;
 int secp256k1_context_randomize (int ,unsigned char*) ;
 int secp256k1_rand256 (unsigned char*) ;
 scalar_t__ secp256k1_rand_bits (int) ;
 int secp256k1_rand_seed (unsigned char*) ;
 int sscanf (char const*,char*,unsigned short*) ;
 int stderr ;
 int strtol (char*,int *,int ) ;
 unsigned char time (int *) ;

int main(int argc, char **argv) {
    unsigned char seed16[16] = {0};
    unsigned char run32[32] = {0};

    if (argc > 1) {
        count = strtol(argv[1], ((void*)0), 0);
    }


    if (argc > 2) {
        int pos = 0;
        const char* ch = argv[2];
        while (pos < 16 && ch[0] != 0 && ch[1] != 0) {
            unsigned short sh;
            if ((sscanf(ch, "%2hx", &sh)) == 1) {
                seed16[pos] = sh;
            } else {
                break;
            }
            ch += 2;
            pos++;
        }
    } else {
        FILE *frand = fopen("/dev/urandom", "r");
        if ((frand == ((void*)0)) || fread(&seed16, 1, sizeof(seed16), frand) != sizeof(seed16)) {
            uint64_t t = time(((void*)0)) * (uint64_t)1337;
            fprintf(stderr, "WARNING: could not read 16 bytes from /dev/urandom; falling back to insecure PRNG\n");
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
            fclose(frand);
        }
    }
    secp256k1_rand_seed(seed16);

    printf("test count = %i\n", count);
    printf("random seed = %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", seed16[0], seed16[1], seed16[2], seed16[3], seed16[4], seed16[5], seed16[6], seed16[7], seed16[8], seed16[9], seed16[10], seed16[11], seed16[12], seed16[13], seed16[14], seed16[15]);


    run_context_tests(0);
    run_context_tests(1);
    run_scratch_tests();
    ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    if (secp256k1_rand_bits(1)) {
        secp256k1_rand256(run32);
        CHECK(secp256k1_context_randomize(ctx, secp256k1_rand_bits(1) ? run32 : ((void*)0)));
    }

    run_rand_bits();
    run_rand_int();

    run_sha256_tests();
    run_hmac_sha256_tests();
    run_rfc6979_hmac_sha256_tests();



    run_num_smalltests();



    run_scalar_tests();


    run_field_inv();
    run_field_inv_var();
    run_field_inv_all_var();
    run_field_misc();
    run_field_convert();
    run_sqr();
    run_sqrt();


    run_ge();
    run_group_decompress();


    run_wnaf();
    run_point_times_order();
    run_ecmult_chain();
    run_ecmult_constants();
    run_ecmult_gen_blind();
    run_ecmult_const_tests();
    run_ecmult_multi_tests();
    run_ec_combine();







    run_ec_pubkey_parse_test();


    run_eckey_edge_case_test();







    run_random_pubkeys();
    run_ecdsa_der_parse();
    run_ecdsa_sign_verify();
    run_ecdsa_end_to_end();
    run_ecdsa_edge_cases();
    secp256k1_rand256(run32);
    printf("random run = %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", run32[0], run32[1], run32[2], run32[3], run32[4], run32[5], run32[6], run32[7], run32[8], run32[9], run32[10], run32[11], run32[12], run32[13], run32[14], run32[15]);


    secp256k1_context_destroy(ctx);

    printf("no problems found\n");
    return 0;
}
