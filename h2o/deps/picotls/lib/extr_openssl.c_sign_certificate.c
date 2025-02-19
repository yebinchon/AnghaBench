
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct st_ptls_openssl_signature_scheme_t {scalar_t__ scheme_id; int scheme_md; } ;
typedef int ptls_t ;
typedef int ptls_sign_certificate_t ;
struct TYPE_2__ {int key; struct st_ptls_openssl_signature_scheme_t* schemes; } ;
typedef TYPE_1__ ptls_openssl_sign_certificate_t ;
typedef int ptls_iovec_t ;
typedef int ptls_buffer_t ;


 int PTLS_ALERT_HANDSHAKE_FAILURE ;
 scalar_t__ UINT16_MAX ;
 int do_sign (int ,int *,int ,int ) ;

__attribute__((used)) static int sign_certificate(ptls_sign_certificate_t *_self, ptls_t *tls, uint16_t *selected_algorithm, ptls_buffer_t *outbuf,
                            ptls_iovec_t input, const uint16_t *algorithms, size_t num_algorithms)
{
    ptls_openssl_sign_certificate_t *self = (ptls_openssl_sign_certificate_t *)_self;
    const struct st_ptls_openssl_signature_scheme_t *scheme;


    for (scheme = self->schemes; scheme->scheme_id != UINT16_MAX; ++scheme) {
        size_t i;
        for (i = 0; i != num_algorithms; ++i)
            if (algorithms[i] == scheme->scheme_id)
                goto Found;
    }
    return PTLS_ALERT_HANDSHAKE_FAILURE;

Found:
    *selected_algorithm = scheme->scheme_id;
    return do_sign(self->key, outbuf, input, scheme->scheme_md);
}
