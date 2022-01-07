
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; int (* fn ) (int ,char*) ;} ;
typedef TYPE_1__ ptls_minicrypto_log_ctx_t ;


 int stub1 (int ,char*) ;

__attribute__((used)) static void ptls_asn1_print_indent(int level, ptls_minicrypto_log_ctx_t *log_ctx)
{
    for (int indent = 0; indent <= level; indent++) {
        log_ctx->fn(log_ctx->ctx, "   ");
    }
}
