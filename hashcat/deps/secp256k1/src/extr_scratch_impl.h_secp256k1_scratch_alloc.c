
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t max_size; size_t alloc_size; scalar_t__ data; int magic; } ;
typedef TYPE_1__ secp256k1_scratch ;
typedef int secp256k1_callback ;


 size_t ROUND_TO_ALIGN (size_t) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int memset (void*,int ,size_t) ;
 int secp256k1_callback_call (int const*,char*) ;

__attribute__((used)) static void *secp256k1_scratch_alloc(const secp256k1_callback* error_callback, secp256k1_scratch* scratch, size_t size) {
    void *ret;
    size = ROUND_TO_ALIGN(size);

    if (memcmp(scratch->magic, "scratch", 8) != 0) {
        secp256k1_callback_call(error_callback, "invalid scratch space");
        return ((void*)0);
    }

    if (size > scratch->max_size - scratch->alloc_size) {
        return ((void*)0);
    }
    ret = (void *) ((char *) scratch->data + scratch->alloc_size);
    memset(ret, 0, size);
    scratch->alloc_size += size;

    return ret;
}
