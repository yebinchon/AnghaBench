#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptls_iovec_t ;
struct TYPE_4__ {int /*<<< orphan*/  digest_size; } ;
typedef  TYPE_1__ ptls_hash_algorithm_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,void*,size_t,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(ptls_hash_algorithm_t *algo, void *key, size_t key_size, int is_iv, const void *secret,
                           ptls_iovec_t hash_value, const char *label_prefix)
{
    return FUNC0(algo, key, key_size, FUNC1(secret, algo->digest_size), is_iv ? "iv" : "key", hash_value,
                                  label_prefix);
}