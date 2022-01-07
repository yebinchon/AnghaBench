
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bench_inv ;


 int bench_context_sign ;
 int bench_context_verify ;
 int bench_ecmult_wnaf ;
 int bench_field_inverse ;
 int bench_field_inverse_var ;
 int bench_field_mul ;
 int bench_field_normalize ;
 int bench_field_normalize_weak ;
 int bench_field_sqr ;
 int bench_field_sqrt ;
 int bench_group_add_affine ;
 int bench_group_add_affine_var ;
 int bench_group_add_var ;
 int bench_group_double_var ;
 int bench_group_jacobi_var ;
 int bench_hmac_sha256 ;
 int bench_num_jacobi ;
 int bench_rfc6979_hmac_sha256 ;
 int bench_scalar_add ;
 int bench_scalar_inverse ;
 int bench_scalar_inverse_var ;
 int bench_scalar_mul ;
 int bench_scalar_negate ;
 int bench_scalar_split ;
 int bench_scalar_sqr ;
 int bench_setup ;
 int bench_sha256 ;
 int bench_wnaf_const ;
 scalar_t__ have_flag (int,char**,char*) ;
 int run_benchmark (char*,int ,int ,int *,int *,int,int) ;

int main(int argc, char **argv) {
    bench_inv data;
    if (have_flag(argc, argv, "scalar") || have_flag(argc, argv, "add")) run_benchmark("scalar_add", bench_scalar_add, bench_setup, ((void*)0), &data, 10, 2000000);
    if (have_flag(argc, argv, "scalar") || have_flag(argc, argv, "negate")) run_benchmark("scalar_negate", bench_scalar_negate, bench_setup, ((void*)0), &data, 10, 2000000);
    if (have_flag(argc, argv, "scalar") || have_flag(argc, argv, "sqr")) run_benchmark("scalar_sqr", bench_scalar_sqr, bench_setup, ((void*)0), &data, 10, 200000);
    if (have_flag(argc, argv, "scalar") || have_flag(argc, argv, "mul")) run_benchmark("scalar_mul", bench_scalar_mul, bench_setup, ((void*)0), &data, 10, 200000);



    if (have_flag(argc, argv, "scalar") || have_flag(argc, argv, "inverse")) run_benchmark("scalar_inverse", bench_scalar_inverse, bench_setup, ((void*)0), &data, 10, 2000);
    if (have_flag(argc, argv, "scalar") || have_flag(argc, argv, "inverse")) run_benchmark("scalar_inverse_var", bench_scalar_inverse_var, bench_setup, ((void*)0), &data, 10, 2000);

    if (have_flag(argc, argv, "field") || have_flag(argc, argv, "normalize")) run_benchmark("field_normalize", bench_field_normalize, bench_setup, ((void*)0), &data, 10, 2000000);
    if (have_flag(argc, argv, "field") || have_flag(argc, argv, "normalize")) run_benchmark("field_normalize_weak", bench_field_normalize_weak, bench_setup, ((void*)0), &data, 10, 2000000);
    if (have_flag(argc, argv, "field") || have_flag(argc, argv, "sqr")) run_benchmark("field_sqr", bench_field_sqr, bench_setup, ((void*)0), &data, 10, 200000);
    if (have_flag(argc, argv, "field") || have_flag(argc, argv, "mul")) run_benchmark("field_mul", bench_field_mul, bench_setup, ((void*)0), &data, 10, 200000);
    if (have_flag(argc, argv, "field") || have_flag(argc, argv, "inverse")) run_benchmark("field_inverse", bench_field_inverse, bench_setup, ((void*)0), &data, 10, 20000);
    if (have_flag(argc, argv, "field") || have_flag(argc, argv, "inverse")) run_benchmark("field_inverse_var", bench_field_inverse_var, bench_setup, ((void*)0), &data, 10, 20000);
    if (have_flag(argc, argv, "field") || have_flag(argc, argv, "sqrt")) run_benchmark("field_sqrt", bench_field_sqrt, bench_setup, ((void*)0), &data, 10, 20000);

    if (have_flag(argc, argv, "group") || have_flag(argc, argv, "double")) run_benchmark("group_double_var", bench_group_double_var, bench_setup, ((void*)0), &data, 10, 200000);
    if (have_flag(argc, argv, "group") || have_flag(argc, argv, "add")) run_benchmark("group_add_var", bench_group_add_var, bench_setup, ((void*)0), &data, 10, 200000);
    if (have_flag(argc, argv, "group") || have_flag(argc, argv, "add")) run_benchmark("group_add_affine", bench_group_add_affine, bench_setup, ((void*)0), &data, 10, 200000);
    if (have_flag(argc, argv, "group") || have_flag(argc, argv, "add")) run_benchmark("group_add_affine_var", bench_group_add_affine_var, bench_setup, ((void*)0), &data, 10, 200000);
    if (have_flag(argc, argv, "group") || have_flag(argc, argv, "jacobi")) run_benchmark("group_jacobi_var", bench_group_jacobi_var, bench_setup, ((void*)0), &data, 10, 20000);

    if (have_flag(argc, argv, "ecmult") || have_flag(argc, argv, "wnaf")) run_benchmark("wnaf_const", bench_wnaf_const, bench_setup, ((void*)0), &data, 10, 20000);
    if (have_flag(argc, argv, "ecmult") || have_flag(argc, argv, "wnaf")) run_benchmark("ecmult_wnaf", bench_ecmult_wnaf, bench_setup, ((void*)0), &data, 10, 20000);

    if (have_flag(argc, argv, "hash") || have_flag(argc, argv, "sha256")) run_benchmark("hash_sha256", bench_sha256, bench_setup, ((void*)0), &data, 10, 20000);
    if (have_flag(argc, argv, "hash") || have_flag(argc, argv, "hmac")) run_benchmark("hash_hmac_sha256", bench_hmac_sha256, bench_setup, ((void*)0), &data, 10, 20000);
    if (have_flag(argc, argv, "hash") || have_flag(argc, argv, "rng6979")) run_benchmark("hash_rfc6979_hmac_sha256", bench_rfc6979_hmac_sha256, bench_setup, ((void*)0), &data, 10, 20000);

    if (have_flag(argc, argv, "context") || have_flag(argc, argv, "verify")) run_benchmark("context_verify", bench_context_verify, bench_setup, ((void*)0), &data, 10, 20);
    if (have_flag(argc, argv, "context") || have_flag(argc, argv, "sign")) run_benchmark("context_sign", bench_context_sign, bench_setup, ((void*)0), &data, 10, 200);


    if (have_flag(argc, argv, "num") || have_flag(argc, argv, "jacobi")) run_benchmark("num_jacobi", bench_num_jacobi, bench_setup, ((void*)0), &data, 10, 200000);

    return 0;
}
