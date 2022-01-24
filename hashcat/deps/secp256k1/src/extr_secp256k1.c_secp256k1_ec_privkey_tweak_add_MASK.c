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
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char const*,int*) ; 

int FUNC7(const secp256k1_context* ctx, unsigned char *seckey, const unsigned char *tweak) {
    secp256k1_scalar term;
    secp256k1_scalar sec;
    int ret = 0;
    int overflow = 0;
    FUNC1(ctx != NULL);
    FUNC0(seckey != NULL);
    FUNC0(tweak != NULL);

    FUNC6(&term, tweak, &overflow);
    FUNC6(&sec, seckey, NULL);

    ret = !overflow && FUNC3(&sec, &term);
    FUNC2(seckey, 0, 32);
    if (ret) {
        FUNC5(seckey, &sec);
    }

    FUNC4(&sec);
    FUNC4(&term);
    return ret;
}