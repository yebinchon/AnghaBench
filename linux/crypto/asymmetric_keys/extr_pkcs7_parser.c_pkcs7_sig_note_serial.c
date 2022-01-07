
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs7_parse_context {size_t raw_serial_size; void const* raw_serial; } ;



int pkcs7_sig_note_serial(void *context, size_t hdrlen,
     unsigned char tag,
     const void *value, size_t vlen)
{
 struct pkcs7_parse_context *ctx = context;
 ctx->raw_serial = value;
 ctx->raw_serial_size = vlen;
 return 0;
}
