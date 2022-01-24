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
struct TYPE_2__ {char* outcome; int /*<<< orphan*/  shared_hex; int /*<<< orphan*/  pk_hex; int /*<<< orphan*/  sk_hex; } ;

/* Variables and functions */
 int FUNC0 (unsigned char*,unsigned char*,unsigned char*) ; 
 int crypto_scalarmult_BYTES ; 
 int crypto_scalarmult_SCALARBYTES ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 TYPE_1__* test_data ; 

int
FUNC6(void)
{
    unsigned char sk[crypto_scalarmult_SCALARBYTES];
    unsigned char pk[crypto_scalarmult_BYTES];
    unsigned char shared[crypto_scalarmult_BYTES];
    unsigned char shared2[crypto_scalarmult_BYTES];
    unsigned int  i;
    int           res;

    for (i = 0U; i < (sizeof test_data) / (sizeof test_data[0]); i++) {
        FUNC4(sk, crypto_scalarmult_SCALARBYTES, test_data[i].sk_hex,
                       crypto_scalarmult_SCALARBYTES * 2, NULL, NULL, NULL);
        FUNC4(pk, crypto_scalarmult_BYTES, test_data[i].pk_hex,
                       crypto_scalarmult_BYTES * 2, NULL, NULL, NULL);
        FUNC4(shared, crypto_scalarmult_BYTES, test_data[i].shared_hex,
                       crypto_scalarmult_BYTES * 2, NULL, NULL, NULL);
        FUNC3(shared2, crypto_scalarmult_BYTES);
        res = FUNC0(shared2, sk, pk);
        if (res == 0) {
            if (FUNC5(test_data[i].outcome, "acceptable") == 0) {
                FUNC2("test case %u succeeded (%s)\n", i,
                       test_data[i].outcome);
            } else if (FUNC5(test_data[i].outcome, "valid") != 0) {
                FUNC2("*** test case %u succeeded, was supposed to be %s\n", i,
                       test_data[i].outcome);
            }
            if (FUNC1(shared, shared2, crypto_scalarmult_BYTES) != 0) {
                FUNC2("*** test case %u succeeded, but shared key is not %s\n",
                       i, test_data[i].outcome);
            }
        } else {
            if (FUNC5(test_data[i].outcome, "acceptable") == 0) {
                FUNC2("test case %u failed (%s)\n", i, test_data[i].outcome);
            } else if (FUNC5(test_data[i].outcome, "valid") == 0) {
                FUNC2("*** test case %u failed, was supposed to be %s\n", i,
                       test_data[i].outcome);
            }
        }
    }
    FUNC2("OK\n");

    return 0;
}