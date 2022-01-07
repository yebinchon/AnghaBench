
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_scratch_space ;
struct TYPE_3__ {int error_callback; } ;
typedef TYPE_1__ secp256k1_context ;


 int VERIFY_CHECK (int ) ;
 int * secp256k1_scratch_create (int *,size_t) ;

secp256k1_scratch_space* secp256k1_scratch_space_create(const secp256k1_context* ctx, size_t max_size) {
    VERIFY_CHECK(ctx != ((void*)0));
    return secp256k1_scratch_create(&ctx->error_callback, max_size);
}
