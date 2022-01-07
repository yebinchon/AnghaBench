
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ctx; int (* fn ) (int ,char*,char const*,int,int ,int) ;} ;
typedef TYPE_1__ ptls_minicrypto_log_ctx_t ;


 int ptls_asn1_print_indent (int,TYPE_1__*) ;
 int stub1 (int ,char*,char const*,int,int ,int) ;

size_t ptls_asn1_error_message(char const *error_label, size_t bytes_max, size_t byte_index, int level,
                               ptls_minicrypto_log_ctx_t *log_ctx)
{
    if (log_ctx != ((void*)0)) {
        ptls_asn1_print_indent(level, log_ctx);
        log_ctx->fn(log_ctx->ctx, "Error: %s (near position: %d (0x%x) out of %d)", error_label, (int)byte_index,
                    (uint32_t)byte_index, (int)bytes_max);
    }
    return byte_index;
}
