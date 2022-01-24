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
typedef  int /*<<< orphan*/  ptls_hash_algorithm_t ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;
typedef  int /*<<< orphan*/  ptls_aead_algorithm_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ptls_aead_context_t *FUNC2(ptls_aead_algorithm_t *aead, ptls_hash_algorithm_t *hash, int is_enc, const void *secret,
                                   const char *label_prefix)
{
    return FUNC0(aead, hash, is_enc, secret, FUNC1(NULL, 0), label_prefix);
}