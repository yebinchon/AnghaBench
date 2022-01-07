
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_12__ {int * v; } ;
typedef TYPE_2__ block ;
struct TYPE_13__ {int lane_length; int lanes; TYPE_1__* region; } ;
typedef TYPE_3__ argon2_instance_t ;
struct TYPE_14__ {int flags; int outlen; int out; } ;
typedef TYPE_4__ argon2_context ;
struct TYPE_11__ {int memory; } ;


 int ARGON2_BLOCK_SIZE ;
 int argon2_free_instance (TYPE_3__*,int ) ;
 int blake2b_long (int ,int ,int *,int) ;
 int copy_block (TYPE_2__*,int) ;
 int sodium_memzero (int *,int) ;
 int store_block (int *,TYPE_2__*) ;
 int xor_block (TYPE_2__*,int) ;

void
argon2_finalize(const argon2_context *context, argon2_instance_t *instance)
{
    if (context != ((void*)0) && instance != ((void*)0)) {
        block blockhash;
        uint32_t l;

        copy_block(&blockhash,
                   instance->region->memory + instance->lane_length - 1);


        for (l = 1; l < instance->lanes; ++l) {
            uint32_t last_block_in_lane =
                l * instance->lane_length + (instance->lane_length - 1);
            xor_block(&blockhash,
                      instance->region->memory + last_block_in_lane);
        }


        {
            uint8_t blockhash_bytes[ARGON2_BLOCK_SIZE];
            store_block(blockhash_bytes, &blockhash);
            blake2b_long(context->out, context->outlen, blockhash_bytes,
                         ARGON2_BLOCK_SIZE);
            sodium_memzero(blockhash.v,
                           ARGON2_BLOCK_SIZE);
            sodium_memzero(blockhash_bytes,
                           ARGON2_BLOCK_SIZE);
        }

        argon2_free_instance(instance, context->flags);
    }
}
