#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;
struct TYPE_3__ {int* msg; int* key; int siglen; int pubkeylen; int /*<<< orphan*/  ctx; int /*<<< orphan*/  ec_group; int /*<<< orphan*/  pubkey; int /*<<< orphan*/  sig; } ;
typedef  TYPE_1__ benchmark_verify_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_secp256k1 ; 
 int SECP256K1_CONTEXT_SIGN ; 
 int SECP256K1_CONTEXT_VERIFY ; 
 int /*<<< orphan*/  SECP256K1_EC_COMPRESSED ; 
 int /*<<< orphan*/  benchmark_verify ; 
 int /*<<< orphan*/  benchmark_verify_openssl ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

int FUNC10(void) {
    int i;
    secp256k1_pubkey pubkey;
    secp256k1_ecdsa_signature sig;
    benchmark_verify_t data;

    data.ctx = FUNC4(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);

    for (i = 0; i < 32; i++) {
        data.msg[i] = 1 + i;
    }
    for (i = 0; i < 32; i++) {
        data.key[i] = 33 + i;
    }
    data.siglen = 72;
    FUNC0(FUNC8(data.ctx, &sig, data.msg, data.key, NULL, NULL));
    FUNC0(FUNC9(data.ctx, data.sig, &data.siglen, &sig));
    FUNC0(FUNC6(data.ctx, &pubkey, data.key));
    data.pubkeylen = 33;
    FUNC0(FUNC7(data.ctx, data.pubkey, &data.pubkeylen, &pubkey, SECP256K1_EC_COMPRESSED) == 1);

    FUNC3("ecdsa_verify", benchmark_verify, NULL, NULL, &data, 10, 20000);
#ifdef ENABLE_OPENSSL_TESTS
    data.ec_group = EC_GROUP_new_by_curve_name(NID_secp256k1);
    run_benchmark("ecdsa_verify_openssl", benchmark_verify_openssl, NULL, NULL, &data, 10, 20000);
    EC_GROUP_free(data.ec_group);
#endif

    FUNC5(data.ctx);
    return 0;
}