
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ unicode_iconv_encoding_direction ;
struct TYPE_4__ {int ntlm; int utf16_to_8; int utf8_to_16; } ;
typedef TYPE_1__ ntlm_unicode_ctx ;
typedef int iconv_t ;


 scalar_t__ E2BIG ;
 size_t NTLM_UNICODE_MAX_LEN ;
 scalar_t__ errno ;
 int free (char*) ;
 size_t iconv (int ,char**,size_t*,char**,size_t*) ;
 char* malloc (size_t) ;
 int ntlm_client_set_errmsg (int ,char*) ;
 char* realloc (char*,size_t) ;
 char* strerror (scalar_t__) ;
 int unicode_iconv_init (TYPE_1__*) ;
 scalar_t__ unicode_iconv_utf8_to_16 ;

__attribute__((used)) static inline bool unicode_iconv_encoding_convert(
 char **converted,
 size_t *converted_len,
 ntlm_unicode_ctx *ctx,
 const char *string,
 size_t string_len,
 unicode_iconv_encoding_direction direction)
{
 char *in_start, *out_start, *out, *new_out;
 size_t in_start_len, out_start_len, out_size, nul_size, ret, written = 0;
 iconv_t converter;

 *converted = ((void*)0);
 *converted_len = 0;

 if (!unicode_iconv_init(ctx))
  return 0;
 if (direction == unicode_iconv_utf8_to_16) {
  converter = ctx->utf8_to_16;
  out_size = (string_len * 2) + 2;
  nul_size = 2;
 } else {
  converter = ctx->utf16_to_8;
  out_size = (string_len / 2) + 1;
  nul_size = 1;
 }


 out_size = (out_size + 7) & ~7;

 if ((out = malloc(out_size)) == ((void*)0)) {
  ntlm_client_set_errmsg(ctx->ntlm, "out of memory");
  return 0;
 }

 in_start = (char *)string;
 in_start_len = string_len;

 while (1) {
  out_start = out + written;
  out_start_len = (out_size - nul_size) - written;

  ret = iconv(converter, &in_start, &in_start_len, &out_start, &out_start_len);
  written = (out_size - nul_size) - out_start_len;

  if (ret == 0)
   break;

  if (ret == (size_t)-1 && errno != E2BIG) {
   ntlm_client_set_errmsg(ctx->ntlm, strerror(errno));
   goto on_error;
  }


  out_size = ((((out_size << 1) - (out_size >> 1)) + 7) & ~7);

  if (out_size > NTLM_UNICODE_MAX_LEN) {
   ntlm_client_set_errmsg(ctx->ntlm,
    "unicode conversion too large");
   goto on_error;
  }

  if ((new_out = realloc(out, out_size)) == ((void*)0)) {
   ntlm_client_set_errmsg(ctx->ntlm, "out of memory");
   goto on_error;
  }

  out = new_out;
 }

 if (in_start_len != 0) {
  ntlm_client_set_errmsg(ctx->ntlm,
   "invalid unicode string; trailing data remains");
  goto on_error;
 }


 out[written] = '\0';

 if (direction == unicode_iconv_utf8_to_16)
  out[written + 1] = '\0';

 *converted = out;

 if (converted_len)
  *converted_len = written;

 return 1;

on_error:
 free(out);
 return 0;
}
