
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * data; } ;
typedef TYPE_1__ secp256k1_pubkey ;
typedef int secp256k1_ge_storage ;
struct TYPE_8__ {int x; } ;
typedef TYPE_2__ secp256k1_ge ;
typedef int secp256k1_fe ;
typedef int secp256k1_context ;
typedef int s ;


 int ARG_CHECK (int) ;
 int memcpy (int *,int *,int) ;
 int secp256k1_fe_is_zero (int *) ;
 int secp256k1_fe_set_b32 (int *,int *) ;
 int secp256k1_ge_from_storage (TYPE_2__*,int *) ;
 int secp256k1_ge_set_xy (TYPE_2__*,int *,int *) ;

__attribute__((used)) static int secp256k1_pubkey_load(const secp256k1_context* ctx, secp256k1_ge* ge, const secp256k1_pubkey* pubkey) {
    if (sizeof(secp256k1_ge_storage) == 64) {



        secp256k1_ge_storage s;
        memcpy(&s, &pubkey->data[0], sizeof(s));
        secp256k1_ge_from_storage(ge, &s);
    } else {

        secp256k1_fe x, y;
        secp256k1_fe_set_b32(&x, pubkey->data);
        secp256k1_fe_set_b32(&y, pubkey->data + 32);
        secp256k1_ge_set_xy(ge, &x, &y);
    }
    ARG_CHECK(!secp256k1_fe_is_zero(&ge->x));
    return 1;
}
