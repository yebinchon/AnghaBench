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
typedef  int /*<<< orphan*/  ptls_iovec_t ;
typedef  int /*<<< orphan*/  ptls_hash_algorithm_t ;

/* Variables and functions */
 char* PTLS_HKDF_EXPAND_LABEL_PREFIX ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*) ; 

int FUNC1(ptls_hash_algorithm_t *algo, void *output, size_t outlen, ptls_iovec_t secret, const char *label,
                           ptls_iovec_t hash_value, const char *label_prefix)
{
    /* the handshake layer should call hkdf_expand_label directly, always setting key_schedule->hkdf_label_prefix as the
     * argument */
    if (label_prefix == NULL)
        label_prefix = PTLS_HKDF_EXPAND_LABEL_PREFIX;
    return FUNC0(algo, output, outlen, secret, label, hash_value, label_prefix);
}