
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* update_hash ) (TYPE_1__ const*,int const*,unsigned int) ;} ;
typedef TYPE_1__ uECC_HashContext ;


 int stub1 (TYPE_1__ const*,int const*,unsigned int) ;

__attribute__((used)) static void HMAC_update(const uECC_HashContext *hash_context,
                        const uint8_t *message,
                        unsigned message_size) {
    hash_context->update_hash(hash_context, message, message_size);
}
