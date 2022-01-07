
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ctx; int (* fn ) (int ,char*,int) ;} ;
typedef TYPE_1__ ptls_minicrypto_log_ctx_t ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_9__ {TYPE_7__ vec; } ;
typedef TYPE_2__ ptls_asn1_pkcs8_private_key_t ;


 int PTLS_ERROR_PEM_LABEL_NOT_FOUND ;
 int ptls_load_pem_objects (char const*,char*,TYPE_7__*,int,size_t*) ;
 int ptls_minicrypto_asn1_decode_private_key (TYPE_2__*,int*,TYPE_1__*) ;
 int stub1 (int ,char*,int) ;

__attribute__((used)) static int ptls_pem_parse_private_key(char const *pem_fname, ptls_asn1_pkcs8_private_key_t *pkey,
                                      ptls_minicrypto_log_ctx_t *log_ctx)
{
    size_t nb_keys = 0;
    int ret = ptls_load_pem_objects(pem_fname, "PRIVATE KEY", &pkey->vec, 1, &nb_keys);

    if (ret == 0) {
        if (nb_keys != 1) {
            ret = PTLS_ERROR_PEM_LABEL_NOT_FOUND;
        }
    }

    if (ret == 0 && nb_keys == 1) {
        int decode_error = 0;

        if (log_ctx != ((void*)0)) {
            log_ctx->fn(log_ctx->ctx, "\nFound PRIVATE KEY, length = %d bytes\n", (int)pkey->vec.len);
        }

        (void)ptls_minicrypto_asn1_decode_private_key(pkey, &decode_error, log_ctx);

        if (decode_error != 0) {
            ret = decode_error;
        }
    }

    return ret;
}
