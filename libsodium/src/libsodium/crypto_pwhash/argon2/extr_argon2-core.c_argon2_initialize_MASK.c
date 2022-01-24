#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int segment_length; int /*<<< orphan*/  type; int /*<<< orphan*/  memory_blocks; int /*<<< orphan*/  region; int /*<<< orphan*/ * pseudo_rands; } ;
typedef  TYPE_1__ argon2_instance_t ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ argon2_context ;

/* Variables and functions */
 int ARGON2_INCORRECT_PARAMETER ; 
 int ARGON2_MEMORY_ALLOCATION_ERROR ; 
 int ARGON2_OK ; 
 int ARGON2_PREHASH_DIGEST_LENGTH ; 
 int ARGON2_PREHASH_SEED_LENGTH ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int
FUNC6(argon2_instance_t *instance, argon2_context *context)
{
    uint8_t blockhash[ARGON2_PREHASH_SEED_LENGTH];
    int     result = ARGON2_OK;

    if (instance == NULL || context == NULL) {
        return ARGON2_INCORRECT_PARAMETER;
    }

    /* 1. Memory allocation */

    if ((instance->pseudo_rands = (uint64_t *)
         FUNC4(sizeof(uint64_t) * instance->segment_length)) == NULL) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }

    result = FUNC0(&(instance->region), instance->memory_blocks);
    if (ARGON2_OK != result) {
        FUNC2(instance, context->flags);
        return result;
    }

    /* 2. Initial hashing */
    /* H_0 + 8 extra bytes to produce the first blocks */
    /* uint8_t blockhash[ARGON2_PREHASH_SEED_LENGTH]; */
    /* Hashing all inputs */
    FUNC3(blockhash, context, instance->type);
    /* Zeroing 8 extra bytes */
    FUNC5(blockhash + ARGON2_PREHASH_DIGEST_LENGTH,
                   ARGON2_PREHASH_SEED_LENGTH - ARGON2_PREHASH_DIGEST_LENGTH);

    /* 3. Creating first blocks, we always have at least two blocks in a slice
     */
    FUNC1(blockhash, instance);
    /* Clearing the hash */
    FUNC5(blockhash, ARGON2_PREHASH_SEED_LENGTH);

    return ARGON2_OK;
}