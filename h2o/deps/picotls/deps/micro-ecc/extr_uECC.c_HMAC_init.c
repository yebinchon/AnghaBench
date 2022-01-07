
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int* tmp; int result_size; unsigned int block_size; int (* update_hash ) (TYPE_1__ const*,int*,unsigned int) ;int (* init_hash ) (TYPE_1__ const*) ;} ;
typedef TYPE_1__ uECC_HashContext ;


 int stub1 (TYPE_1__ const*) ;
 int stub2 (TYPE_1__ const*,int*,unsigned int) ;

__attribute__((used)) static void HMAC_init(const uECC_HashContext *hash_context, const uint8_t *K) {
    uint8_t *pad = hash_context->tmp + 2 * hash_context->result_size;
    unsigned i;
    for (i = 0; i < hash_context->result_size; ++i)
        pad[i] = K[i] ^ 0x36;
    for (; i < hash_context->block_size; ++i)
        pad[i] = 0x36;

    hash_context->init_hash(hash_context);
    hash_context->update_hash(hash_context, pad, hash_context->block_size);
}
