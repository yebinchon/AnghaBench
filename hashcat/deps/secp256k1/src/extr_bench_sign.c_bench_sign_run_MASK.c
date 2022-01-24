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
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;
struct TYPE_2__ {unsigned char* msg; unsigned char* key; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ bench_sign ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void* arg) {
    int i;
    bench_sign *data = (bench_sign*)arg;

    unsigned char sig[74];
    for (i = 0; i < 20000; i++) {
        size_t siglen = 74;
        int j;
        secp256k1_ecdsa_signature signature;
        FUNC0(FUNC1(data->ctx, &signature, data->msg, data->key, NULL, NULL));
        FUNC0(FUNC2(data->ctx, sig, &siglen, &signature));
        for (j = 0; j < 32; j++) {
            data->msg[j] = sig[j];
            data->key[j] = sig[j + 32];
        }
    }
}