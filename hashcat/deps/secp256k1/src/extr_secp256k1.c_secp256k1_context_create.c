
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_context ;


 scalar_t__ EXPECT (int ,int ) ;
 scalar_t__ checked_malloc (int *,size_t const) ;
 int default_error_callback ;
 int free (int *) ;
 int * secp256k1_context_preallocated_create (int *,unsigned int) ;
 size_t secp256k1_context_preallocated_size (unsigned int) ;

secp256k1_context* secp256k1_context_create(unsigned int flags) {
    size_t const prealloc_size = secp256k1_context_preallocated_size(flags);
    secp256k1_context* ctx = (secp256k1_context*)checked_malloc(&default_error_callback, prealloc_size);
    if (EXPECT(secp256k1_context_preallocated_create(ctx, flags) == ((void*)0), 0)) {
        free(ctx);
        return ((void*)0);
    }

    return ctx;
}
