
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int ctx; int (* fn ) (int ,char*,int,int) ;} ;
typedef TYPE_1__ ptls_minicrypto_log_ctx_t ;


 int PTLS_ERROR_BER_ELEMENT_TOO_SHORT ;
 size_t ptls_asn1_validation_recursive (int const*,size_t,int*,int ,TYPE_1__*) ;
 int stub1 (int ,char*,int,int) ;

int ptls_asn1_validation(const uint8_t *bytes, size_t length, ptls_minicrypto_log_ctx_t *log_ctx)
{
    int decode_error = 0;
    size_t decoded = ptls_asn1_validation_recursive(bytes, length, &decode_error, 0, log_ctx);

    if (decode_error == 0 && decoded < length) {
        decode_error = PTLS_ERROR_BER_ELEMENT_TOO_SHORT;
        if (log_ctx != ((void*)0)) {
            log_ctx->fn(log_ctx->ctx, "Type too short, %d bytes only out of %d\n", (int)decoded, (int)length);
        }
    }

    return decode_error;
}
