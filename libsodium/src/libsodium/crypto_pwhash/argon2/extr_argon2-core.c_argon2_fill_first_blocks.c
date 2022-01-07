
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int lanes; int lane_length; TYPE_1__* region; } ;
typedef TYPE_2__ argon2_instance_t ;
struct TYPE_4__ {int * memory; } ;


 int ARGON2_BLOCK_SIZE ;
 int ARGON2_PREHASH_DIGEST_LENGTH ;
 int ARGON2_PREHASH_SEED_LENGTH ;
 int STORE32_LE (int *,int) ;
 int blake2b_long (int *,int,int *,int ) ;
 int load_block (int *,int *) ;
 int sodium_memzero (int *,int) ;

__attribute__((used)) static void
argon2_fill_first_blocks(uint8_t *blockhash, const argon2_instance_t *instance)
{
    uint32_t l;


    uint8_t blockhash_bytes[ARGON2_BLOCK_SIZE];
    for (l = 0; l < instance->lanes; ++l) {
        STORE32_LE(blockhash + ARGON2_PREHASH_DIGEST_LENGTH, 0);
        STORE32_LE(blockhash + ARGON2_PREHASH_DIGEST_LENGTH + 4, l);
        blake2b_long(blockhash_bytes, ARGON2_BLOCK_SIZE, blockhash,
                     ARGON2_PREHASH_SEED_LENGTH);
        load_block(&instance->region->memory[l * instance->lane_length + 0],
                   blockhash_bytes);

        STORE32_LE(blockhash + ARGON2_PREHASH_DIGEST_LENGTH, 1);
        blake2b_long(blockhash_bytes, ARGON2_BLOCK_SIZE, blockhash,
                     ARGON2_PREHASH_SEED_LENGTH);
        load_block(&instance->region->memory[l * instance->lane_length + 1],
                   blockhash_bytes);
    }
    sodium_memzero(blockhash_bytes, ARGON2_BLOCK_SIZE);
}
