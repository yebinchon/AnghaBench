
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_parse_context {TYPE_1__* cert; } ;
struct TYPE_2__ {size_t raw_serial_size; void const* raw_serial; } ;



int x509_note_serial(void *context, size_t hdrlen,
       unsigned char tag,
       const void *value, size_t vlen)
{
 struct x509_parse_context *ctx = context;
 ctx->cert->raw_serial = value;
 ctx->cert->raw_serial_size = vlen;
 return 0;
}
