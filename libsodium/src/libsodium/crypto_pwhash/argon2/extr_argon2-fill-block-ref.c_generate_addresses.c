
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct TYPE_10__ {int * v; } ;
typedef TYPE_1__ block ;
struct TYPE_11__ {int slice; int lane; int pass; } ;
typedef TYPE_2__ argon2_position_t ;
struct TYPE_12__ {size_t segment_length; int type; int passes; int memory_blocks; } ;
typedef TYPE_3__ argon2_instance_t ;


 size_t ARGON2_ADDRESSES_IN_BLOCK ;
 int fill_block_with_xor (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int init_block_value (TYPE_1__*,int ) ;

__attribute__((used)) static void
generate_addresses(const argon2_instance_t *instance,
                   const argon2_position_t *position, uint64_t *pseudo_rands)
{
    block zero_block, input_block, address_block, tmp_block;
    uint32_t i;

    init_block_value(&zero_block, 0);
    init_block_value(&input_block, 0);

    if (instance != ((void*)0) && position != ((void*)0)) {
        input_block.v[0] = position->pass;
        input_block.v[1] = position->lane;
        input_block.v[2] = position->slice;
        input_block.v[3] = instance->memory_blocks;
        input_block.v[4] = instance->passes;
        input_block.v[5] = instance->type;

        for (i = 0; i < instance->segment_length; ++i) {
            if (i % ARGON2_ADDRESSES_IN_BLOCK == 0) {
                input_block.v[6]++;
                init_block_value(&tmp_block, 0);
                init_block_value(&address_block, 0);
                fill_block_with_xor(&zero_block, &input_block, &tmp_block);
                fill_block_with_xor(&zero_block, &tmp_block, &address_block);
            }

            pseudo_rands[i] = address_block.v[i % ARGON2_ADDRESSES_IN_BLOCK];
        }
    }
}
