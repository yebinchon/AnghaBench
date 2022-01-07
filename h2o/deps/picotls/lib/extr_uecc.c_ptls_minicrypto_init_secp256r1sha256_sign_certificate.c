
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cb; } ;
struct TYPE_7__ {int key; TYPE_1__ super; } ;
typedef TYPE_2__ ptls_minicrypto_secp256r1sha256_sign_certificate_t ;
struct TYPE_8__ {int len; int base; } ;
typedef TYPE_3__ ptls_iovec_t ;


 int PTLS_ERROR_INCOMPATIBLE_KEY ;
 int memcpy (int ,int ,int) ;
 int secp256r1sha256_sign ;

int ptls_minicrypto_init_secp256r1sha256_sign_certificate(ptls_minicrypto_secp256r1sha256_sign_certificate_t *self,
                                                          ptls_iovec_t key)
{
    if (key.len != sizeof(self->key))
        return PTLS_ERROR_INCOMPATIBLE_KEY;

    self->super.cb = secp256r1sha256_sign;
    memcpy(self->key, key.base, sizeof(self->key));

    return 0;
}
