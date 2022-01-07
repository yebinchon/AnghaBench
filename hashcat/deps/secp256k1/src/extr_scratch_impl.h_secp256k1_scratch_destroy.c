
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ alloc_size; int magic; } ;
typedef TYPE_1__ secp256k1_scratch ;
typedef int secp256k1_callback ;


 int VERIFY_CHECK (int) ;
 int free (TYPE_1__*) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int memset (int ,int ,int) ;
 int secp256k1_callback_call (int const*,char*) ;

__attribute__((used)) static void secp256k1_scratch_destroy(const secp256k1_callback* error_callback, secp256k1_scratch* scratch) {
    if (scratch != ((void*)0)) {
        VERIFY_CHECK(scratch->alloc_size == 0);
        if (memcmp(scratch->magic, "scratch", 8) != 0) {
            secp256k1_callback_call(error_callback, "invalid scratch space");
            return;
        }
        memset(scratch->magic, 0, sizeof(scratch->magic));
        free(scratch);
    }
}
