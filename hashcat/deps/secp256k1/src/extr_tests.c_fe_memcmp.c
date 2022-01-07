
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int normalized; int magnitude; } ;
typedef TYPE_1__ secp256k1_fe ;


 int memcmp (TYPE_1__ const*,TYPE_1__*,int) ;

int fe_memcmp(const secp256k1_fe *a, const secp256k1_fe *b) {
    secp256k1_fe t = *b;




    return memcmp(a, &t, sizeof(secp256k1_fe));
}
