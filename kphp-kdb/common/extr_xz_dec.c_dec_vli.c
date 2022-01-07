
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vli_type ;
typedef int uint8_t ;
struct xz_dec {int pos; int vli; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;


 int VLI_BYTES_MAX ;
 int XZ_DATA_ERROR ;
 int XZ_OK ;
 int XZ_STREAM_END ;

__attribute__((used)) static enum xz_ret dec_vli(struct xz_dec *s, const uint8_t *in,
      size_t *in_pos, size_t in_size)
{
 uint8_t byte;

 if (s->pos == 0)
  s->vli = 0;

 while (*in_pos < in_size) {
  byte = in[*in_pos];
  ++*in_pos;

  s->vli |= (vli_type)(byte & 0x7F) << s->pos;

  if ((byte & 0x80) == 0) {

   if (byte == 0 && s->pos != 0)
    return XZ_DATA_ERROR;

   s->pos = 0;
   return XZ_STREAM_END;
  }

  s->pos += 7;
  if (s->pos == 7 * VLI_BYTES_MAX)
   return XZ_DATA_ERROR;
 }

 return XZ_OK;
}
