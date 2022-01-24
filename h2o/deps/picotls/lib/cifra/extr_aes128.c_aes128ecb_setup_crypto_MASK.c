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
typedef  int /*<<< orphan*/  ptls_cipher_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_AES128_KEY_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(ptls_cipher_context_t *ctx, int is_enc, const void *key)
{
    return FUNC0(ctx, is_enc, key, PTLS_AES128_KEY_SIZE);
}