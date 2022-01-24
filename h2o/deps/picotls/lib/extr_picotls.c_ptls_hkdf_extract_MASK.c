#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ ptls_iovec_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* final ) (TYPE_2__*,void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* update ) (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ;} ;
typedef  TYPE_2__ ptls_hash_context_t ;
struct TYPE_14__ {int /*<<< orphan*/  digest_size; } ;
typedef  TYPE_3__ ptls_hash_algorithm_t ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  PTLS_HASH_FINAL_MODE_FREE ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zeroes_of_max_digest_size ; 

int FUNC4(ptls_hash_algorithm_t *algo, void *output, ptls_iovec_t salt, ptls_iovec_t ikm)
{
    ptls_hash_context_t *hash;

    if (salt.len == 0)
        salt = FUNC1(zeroes_of_max_digest_size, algo->digest_size);

    if ((hash = FUNC0(algo, salt.base, salt.len)) == NULL)
        return PTLS_ERROR_NO_MEMORY;
    hash->update(hash, ikm.base, ikm.len);
    hash->final(hash, output, PTLS_HASH_FINAL_MODE_FREE);
    return 0;
}