
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int super; } ;
typedef TYPE_1__ ptls_openssl_verify_certificate_t ;
struct TYPE_6__ {int * verify_certificate; } ;
typedef TYPE_2__ ptls_context_t ;


 int ptls_openssl_init_verify_certificate (TYPE_1__*,int *) ;

__attribute__((used)) static inline void setup_verify_certificate(ptls_context_t *ctx)
{
    static ptls_openssl_verify_certificate_t vc;
    ptls_openssl_init_verify_certificate(&vc, ((void*)0));
    ctx->verify_certificate = &vc.super;
}
