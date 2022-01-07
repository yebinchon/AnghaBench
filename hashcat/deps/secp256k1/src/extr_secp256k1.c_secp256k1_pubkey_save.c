
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * data; } ;
typedef TYPE_1__ secp256k1_pubkey ;
typedef int secp256k1_ge_storage ;
struct TYPE_8__ {int y; int x; } ;
typedef TYPE_2__ secp256k1_ge ;
typedef int s ;


 int VERIFY_CHECK (int) ;
 int memcpy (int *,int *,int) ;
 int secp256k1_fe_get_b32 (int *,int *) ;
 int secp256k1_fe_normalize_var (int *) ;
 int secp256k1_ge_is_infinity (TYPE_2__*) ;
 int secp256k1_ge_to_storage (int *,TYPE_2__*) ;

__attribute__((used)) static void secp256k1_pubkey_save(secp256k1_pubkey* pubkey, secp256k1_ge* ge) {
    if (sizeof(secp256k1_ge_storage) == 64) {
        secp256k1_ge_storage s;
        secp256k1_ge_to_storage(&s, ge);
        memcpy(&pubkey->data[0], &s, sizeof(s));
    } else {
        VERIFY_CHECK(!secp256k1_ge_is_infinity(ge));
        secp256k1_fe_normalize_var(&ge->x);
        secp256k1_fe_normalize_var(&ge->y);
        secp256k1_fe_get_b32(pubkey->data, &ge->x);
        secp256k1_fe_get_b32(pubkey->data + 32, &ge->y);
    }
}
