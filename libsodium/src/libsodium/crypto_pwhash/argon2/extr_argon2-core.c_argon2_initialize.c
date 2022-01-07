
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_8__ {int segment_length; int type; int memory_blocks; int region; int * pseudo_rands; } ;
typedef TYPE_1__ argon2_instance_t ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_2__ argon2_context ;


 int ARGON2_INCORRECT_PARAMETER ;
 int ARGON2_MEMORY_ALLOCATION_ERROR ;
 int ARGON2_OK ;
 int ARGON2_PREHASH_DIGEST_LENGTH ;
 int ARGON2_PREHASH_SEED_LENGTH ;
 int allocate_memory (int *,int ) ;
 int argon2_fill_first_blocks (int *,TYPE_1__*) ;
 int argon2_free_instance (TYPE_1__*,int ) ;
 int argon2_initial_hash (int *,TYPE_2__*,int ) ;
 scalar_t__ malloc (int) ;
 int sodium_memzero (int *,int) ;

int
argon2_initialize(argon2_instance_t *instance, argon2_context *context)
{
    uint8_t blockhash[ARGON2_PREHASH_SEED_LENGTH];
    int result = ARGON2_OK;

    if (instance == ((void*)0) || context == ((void*)0)) {
        return ARGON2_INCORRECT_PARAMETER;
    }



    if ((instance->pseudo_rands = (uint64_t *)
         malloc(sizeof(uint64_t) * instance->segment_length)) == ((void*)0)) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }

    result = allocate_memory(&(instance->region), instance->memory_blocks);
    if (ARGON2_OK != result) {
        argon2_free_instance(instance, context->flags);
        return result;
    }





    argon2_initial_hash(blockhash, context, instance->type);

    sodium_memzero(blockhash + ARGON2_PREHASH_DIGEST_LENGTH,
                   ARGON2_PREHASH_SEED_LENGTH - ARGON2_PREHASH_DIGEST_LENGTH);



    argon2_fill_first_blocks(blockhash, instance);

    sodium_memzero(blockhash, ARGON2_PREHASH_SEED_LENGTH);

    return ARGON2_OK;
}
