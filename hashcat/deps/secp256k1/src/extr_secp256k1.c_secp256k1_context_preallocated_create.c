
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ecmult_ctx; int ecmult_gen_ctx; int illegal_callback; int error_callback; } ;
typedef TYPE_1__ secp256k1_context ;


 scalar_t__ EXPECT (int,int ) ;
 unsigned int SECP256K1_FLAGS_BIT_CONTEXT_SIGN ;
 unsigned int SECP256K1_FLAGS_BIT_CONTEXT_VERIFY ;
 unsigned int SECP256K1_FLAGS_TYPE_CONTEXT ;
 unsigned int SECP256K1_FLAGS_TYPE_MASK ;
 int VERIFY_CHECK (int ) ;
 int default_error_callback ;
 int default_illegal_callback ;
 scalar_t__ manual_alloc (void**,int,void* const,size_t) ;
 int secp256k1_callback_call (int *,char*) ;
 size_t secp256k1_context_preallocated_size (unsigned int) ;
 int secp256k1_ecmult_context_build (int *,void**) ;
 int secp256k1_ecmult_context_init (int *) ;
 int secp256k1_ecmult_gen_context_build (int *,void**) ;
 int secp256k1_ecmult_gen_context_init (int *) ;

secp256k1_context* secp256k1_context_preallocated_create(void* prealloc, unsigned int flags) {
    void* const base = prealloc;
    size_t prealloc_size;
    secp256k1_context* ret;

    VERIFY_CHECK(prealloc != ((void*)0));
    prealloc_size = secp256k1_context_preallocated_size(flags);
    ret = (secp256k1_context*)manual_alloc(&prealloc, sizeof(secp256k1_context), base, prealloc_size);
    ret->illegal_callback = default_illegal_callback;
    ret->error_callback = default_error_callback;

    if (EXPECT((flags & SECP256K1_FLAGS_TYPE_MASK) != SECP256K1_FLAGS_TYPE_CONTEXT, 0)) {
            secp256k1_callback_call(&ret->illegal_callback,
                                    "Invalid flags");
            return ((void*)0);
    }

    secp256k1_ecmult_context_init(&ret->ecmult_ctx);
    secp256k1_ecmult_gen_context_init(&ret->ecmult_gen_ctx);

    if (flags & SECP256K1_FLAGS_BIT_CONTEXT_SIGN) {
        secp256k1_ecmult_gen_context_build(&ret->ecmult_gen_ctx, &prealloc);
    }
    if (flags & SECP256K1_FLAGS_BIT_CONTEXT_VERIFY) {
        secp256k1_ecmult_context_build(&ret->ecmult_ctx, &prealloc);
    }

    return (secp256k1_context*) ret;
}
