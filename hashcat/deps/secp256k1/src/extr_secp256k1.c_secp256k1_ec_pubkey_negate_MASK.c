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
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(const secp256k1_context* ctx, secp256k1_pubkey *pubkey) {
    int ret = 0;
    secp256k1_ge p;
    FUNC1(ctx != NULL);
    FUNC0(pubkey != NULL);

    ret = FUNC4(ctx, &p, pubkey);
    FUNC2(pubkey, 0, sizeof(*pubkey));
    if (ret) {
        FUNC3(&p, &p);
        FUNC5(pubkey, &p);
    }
    return ret;
}