
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int result_size; } ;
typedef TYPE_1__ uECC_HashContext ;


 int HMAC_finish (TYPE_1__ const*,int *,int *) ;
 int HMAC_init (TYPE_1__ const*,int *) ;
 int HMAC_update (TYPE_1__ const*,int *,int ) ;

__attribute__((used)) static void update_V(const uECC_HashContext *hash_context, uint8_t *K, uint8_t *V) {
    HMAC_init(hash_context, K);
    HMAC_update(hash_context, V, hash_context->result_size);
    HMAC_finish(hash_context, K, V);
}
