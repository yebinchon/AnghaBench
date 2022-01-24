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
typedef  int /*<<< orphan*/  bench_inv ;

/* Variables and functions */
 int /*<<< orphan*/  bench_context_sign ; 
 int /*<<< orphan*/  bench_context_verify ; 
 int /*<<< orphan*/  bench_ecmult_wnaf ; 
 int /*<<< orphan*/  bench_field_inverse ; 
 int /*<<< orphan*/  bench_field_inverse_var ; 
 int /*<<< orphan*/  bench_field_mul ; 
 int /*<<< orphan*/  bench_field_normalize ; 
 int /*<<< orphan*/  bench_field_normalize_weak ; 
 int /*<<< orphan*/  bench_field_sqr ; 
 int /*<<< orphan*/  bench_field_sqrt ; 
 int /*<<< orphan*/  bench_group_add_affine ; 
 int /*<<< orphan*/  bench_group_add_affine_var ; 
 int /*<<< orphan*/  bench_group_add_var ; 
 int /*<<< orphan*/  bench_group_double_var ; 
 int /*<<< orphan*/  bench_group_jacobi_var ; 
 int /*<<< orphan*/  bench_hmac_sha256 ; 
 int /*<<< orphan*/  bench_num_jacobi ; 
 int /*<<< orphan*/  bench_rfc6979_hmac_sha256 ; 
 int /*<<< orphan*/  bench_scalar_add ; 
 int /*<<< orphan*/  bench_scalar_inverse ; 
 int /*<<< orphan*/  bench_scalar_inverse_var ; 
 int /*<<< orphan*/  bench_scalar_mul ; 
 int /*<<< orphan*/  bench_scalar_negate ; 
 int /*<<< orphan*/  bench_scalar_split ; 
 int /*<<< orphan*/  bench_scalar_sqr ; 
 int /*<<< orphan*/  bench_setup ; 
 int /*<<< orphan*/  bench_sha256 ; 
 int /*<<< orphan*/  bench_wnaf_const ; 
 scalar_t__ FUNC0 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

int FUNC2(int argc, char **argv) {
    bench_inv data;
    if (FUNC0(argc, argv, "scalar") || FUNC0(argc, argv, "add")) FUNC1("scalar_add", bench_scalar_add, bench_setup, NULL, &data, 10, 2000000);
    if (FUNC0(argc, argv, "scalar") || FUNC0(argc, argv, "negate")) FUNC1("scalar_negate", bench_scalar_negate, bench_setup, NULL, &data, 10, 2000000);
    if (FUNC0(argc, argv, "scalar") || FUNC0(argc, argv, "sqr")) FUNC1("scalar_sqr", bench_scalar_sqr, bench_setup, NULL, &data, 10, 200000);
    if (FUNC0(argc, argv, "scalar") || FUNC0(argc, argv, "mul")) FUNC1("scalar_mul", bench_scalar_mul, bench_setup, NULL, &data, 10, 200000);
#ifdef USE_ENDOMORPHISM
    if (have_flag(argc, argv, "scalar") || have_flag(argc, argv, "split")) run_benchmark("scalar_split", bench_scalar_split, bench_setup, NULL, &data, 10, 20000);
#endif
    if (FUNC0(argc, argv, "scalar") || FUNC0(argc, argv, "inverse")) FUNC1("scalar_inverse", bench_scalar_inverse, bench_setup, NULL, &data, 10, 2000);
    if (FUNC0(argc, argv, "scalar") || FUNC0(argc, argv, "inverse")) FUNC1("scalar_inverse_var", bench_scalar_inverse_var, bench_setup, NULL, &data, 10, 2000);

    if (FUNC0(argc, argv, "field") || FUNC0(argc, argv, "normalize")) FUNC1("field_normalize", bench_field_normalize, bench_setup, NULL, &data, 10, 2000000);
    if (FUNC0(argc, argv, "field") || FUNC0(argc, argv, "normalize")) FUNC1("field_normalize_weak", bench_field_normalize_weak, bench_setup, NULL, &data, 10, 2000000);
    if (FUNC0(argc, argv, "field") || FUNC0(argc, argv, "sqr")) FUNC1("field_sqr", bench_field_sqr, bench_setup, NULL, &data, 10, 200000);
    if (FUNC0(argc, argv, "field") || FUNC0(argc, argv, "mul")) FUNC1("field_mul", bench_field_mul, bench_setup, NULL, &data, 10, 200000);
    if (FUNC0(argc, argv, "field") || FUNC0(argc, argv, "inverse")) FUNC1("field_inverse", bench_field_inverse, bench_setup, NULL, &data, 10, 20000);
    if (FUNC0(argc, argv, "field") || FUNC0(argc, argv, "inverse")) FUNC1("field_inverse_var", bench_field_inverse_var, bench_setup, NULL, &data, 10, 20000);
    if (FUNC0(argc, argv, "field") || FUNC0(argc, argv, "sqrt")) FUNC1("field_sqrt", bench_field_sqrt, bench_setup, NULL, &data, 10, 20000);

    if (FUNC0(argc, argv, "group") || FUNC0(argc, argv, "double")) FUNC1("group_double_var", bench_group_double_var, bench_setup, NULL, &data, 10, 200000);
    if (FUNC0(argc, argv, "group") || FUNC0(argc, argv, "add")) FUNC1("group_add_var", bench_group_add_var, bench_setup, NULL, &data, 10, 200000);
    if (FUNC0(argc, argv, "group") || FUNC0(argc, argv, "add")) FUNC1("group_add_affine", bench_group_add_affine, bench_setup, NULL, &data, 10, 200000);
    if (FUNC0(argc, argv, "group") || FUNC0(argc, argv, "add")) FUNC1("group_add_affine_var", bench_group_add_affine_var, bench_setup, NULL, &data, 10, 200000);
    if (FUNC0(argc, argv, "group") || FUNC0(argc, argv, "jacobi")) FUNC1("group_jacobi_var", bench_group_jacobi_var, bench_setup, NULL, &data, 10, 20000);

    if (FUNC0(argc, argv, "ecmult") || FUNC0(argc, argv, "wnaf")) FUNC1("wnaf_const", bench_wnaf_const, bench_setup, NULL, &data, 10, 20000);
    if (FUNC0(argc, argv, "ecmult") || FUNC0(argc, argv, "wnaf")) FUNC1("ecmult_wnaf", bench_ecmult_wnaf, bench_setup, NULL, &data, 10, 20000);

    if (FUNC0(argc, argv, "hash") || FUNC0(argc, argv, "sha256")) FUNC1("hash_sha256", bench_sha256, bench_setup, NULL, &data, 10, 20000);
    if (FUNC0(argc, argv, "hash") || FUNC0(argc, argv, "hmac")) FUNC1("hash_hmac_sha256", bench_hmac_sha256, bench_setup, NULL, &data, 10, 20000);
    if (FUNC0(argc, argv, "hash") || FUNC0(argc, argv, "rng6979")) FUNC1("hash_rfc6979_hmac_sha256", bench_rfc6979_hmac_sha256, bench_setup, NULL, &data, 10, 20000);

    if (FUNC0(argc, argv, "context") || FUNC0(argc, argv, "verify")) FUNC1("context_verify", bench_context_verify, bench_setup, NULL, &data, 10, 20);
    if (FUNC0(argc, argv, "context") || FUNC0(argc, argv, "sign")) FUNC1("context_sign", bench_context_sign, bench_setup, NULL, &data, 10, 200);

#ifndef USE_NUM_NONE
    if (FUNC0(argc, argv, "num") || FUNC0(argc, argv, "jacobi")) FUNC1("num_jacobi", bench_num_jacobi, bench_setup, NULL, &data, 10, 200000);
#endif
    return 0;
}