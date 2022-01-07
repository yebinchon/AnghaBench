
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptls_iovec_t ;
struct TYPE_4__ {int count; int * list; } ;
struct TYPE_5__ {TYPE_1__ certificates; } ;
typedef TYPE_2__ ptls_context_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int PTLS_MAX_CERTS_IN_CONTEXT ;
 scalar_t__ malloc (int) ;
 int ptls_load_pem_objects (char const*,char*,int *,int,int *) ;

int ptls_load_certificates(ptls_context_t *ctx, char const *cert_pem_file)
{
    int ret = 0;

    ctx->certificates.list = (ptls_iovec_t *)malloc(PTLS_MAX_CERTS_IN_CONTEXT * sizeof(ptls_iovec_t));

    if (ctx->certificates.list == ((void*)0)) {
        ret = PTLS_ERROR_NO_MEMORY;
    } else {
        ret = ptls_load_pem_objects(cert_pem_file, "CERTIFICATE", ctx->certificates.list, PTLS_MAX_CERTS_IN_CONTEXT,
                                    &ctx->certificates.count);
    }

    return ret;
}
