#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;
struct TYPE_2__ {int* sig; int /*<<< orphan*/  siglen; int /*<<< orphan*/  msg; int /*<<< orphan*/  ctx; int /*<<< orphan*/  pubkeylen; int /*<<< orphan*/  pubkey; } ;
typedef  TYPE_1__ benchmark_verify_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void* arg) {
    int i;
    benchmark_verify_t* data = (benchmark_verify_t*)arg;

    for (i = 0; i < 20000; i++) {
        secp256k1_pubkey pubkey;
        secp256k1_ecdsa_signature sig;
        data->sig[data->siglen - 1] ^= (i & 0xFF);
        data->sig[data->siglen - 2] ^= ((i >> 8) & 0xFF);
        data->sig[data->siglen - 3] ^= ((i >> 16) & 0xFF);
        FUNC0(FUNC1(data->ctx, &pubkey, data->pubkey, data->pubkeylen) == 1);
        FUNC0(FUNC2(data->ctx, &sig, data->sig, data->siglen) == 1);
        FUNC0(FUNC3(data->ctx, &sig, data->msg, &pubkey) == (i == 0));
        data->sig[data->siglen - 1] ^= (i & 0xFF);
        data->sig[data->siglen - 2] ^= ((i >> 8) & 0xFF);
        data->sig[data->siglen - 3] ^= ((i >> 16) & 0xFF);
    }
}