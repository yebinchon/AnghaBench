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
typedef  int /*<<< orphan*/  ptls_cipher_suite_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_CIPHER_SUITE_CHACHA20_POLY1305_SHA256 ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
    ptls_cipher_suite_t *cs = FUNC0(ctx, PTLS_CIPHER_SUITE_CHACHA20_POLY1305_SHA256),
                        *cs_peer = FUNC0(ctx, PTLS_CIPHER_SUITE_CHACHA20_POLY1305_SHA256);

    if (cs != NULL && cs_peer != NULL) {
        FUNC2(cs, cs_peer);
        FUNC1(cs, cs_peer);
    }
}