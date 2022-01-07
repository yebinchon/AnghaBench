
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ unicode_builtin_encoding_direction ;
struct TYPE_3__ {int ntlm; } ;
typedef TYPE_1__ ntlm_unicode_ctx ;
typedef int UTF8 ;
typedef int UTF16 ;
typedef int ConversionResult ;


 int ConvertUTF16toUTF8 (int const**,int *,int **,int *,int ) ;
 int ConvertUTF8toUTF16 (int const**,int *,int **,int *,int ) ;
 size_t NTLM_UNICODE_MAX_LEN ;

 int free (char*) ;
 int lenientConversion ;
 char* malloc (size_t) ;
 int ntlm_client_set_errmsg (int ,char*) ;
 char* realloc (char*,size_t) ;


 int strictConversion ;

 scalar_t__ unicode_builtin_utf16_to_8 ;
 scalar_t__ unicode_builtin_utf8_to_16 ;

__attribute__((used)) static inline bool unicode_builtin_encoding_convert(
 char **converted,
 size_t *converted_len,
 ntlm_unicode_ctx *ctx,
 const char *string,
 size_t string_len,
 unicode_builtin_encoding_direction direction)
{
 const char *in_start, *in_end;
 char *out, *out_start, *out_end, *new_out;
 size_t out_size, out_len;
 bool success = 0;
 ConversionResult result;

 *converted = ((void*)0);
 *converted_len = 0;

 in_start = string;
 in_end = in_start + string_len;







 if (direction == unicode_builtin_utf8_to_16)
  out_size = (string_len * 2 + 2);
 else
  out_size = (string_len / 2 + 1);


 out_size = (out_size + 7) & ~7;

 if ((out = malloc(out_size)) == ((void*)0)) {
  ntlm_client_set_errmsg(ctx->ntlm, "out of memory");
  return 0;
 }

 out_start = out;
 out_end = out_start + out_size;


 if (direction == unicode_builtin_utf16_to_8)
  out_end--;

 while (1) {
  if (direction == unicode_builtin_utf8_to_16)
   result = ConvertUTF8toUTF16(
    (const UTF8 **)&in_start, (UTF8 *)in_end,
    (UTF16 **)&out_start, (UTF16 *)out_end, strictConversion);
  else
   result = ConvertUTF16toUTF8(
    (const UTF16 **)&in_start, (UTF16 *)in_end,
    (UTF8 **)&out_start, (UTF8 *)out_end, lenientConversion);

  switch (result) {
   case 131:
    success = 1;
    goto done;
   case 130:
    ntlm_client_set_errmsg(ctx->ntlm,
     "invalid unicode string; trailing data remains");
    goto done;
   case 128:
    break;
   case 129:
    ntlm_client_set_errmsg(ctx->ntlm,
     "invalid unicode string; trailing data remains");
    goto done;
   default:
    ntlm_client_set_errmsg(ctx->ntlm,
     "unknown unicode conversion failure");
    goto done;
  }


  out_size = ((((out_size << 1) - (out_size >> 1)) + 7) & ~7);

  if (out_size > NTLM_UNICODE_MAX_LEN) {
   ntlm_client_set_errmsg(ctx->ntlm,
    "unicode conversion too large");
   goto done;
  }

  if ((new_out = realloc(out, out_size)) == ((void*)0)) {
   ntlm_client_set_errmsg(ctx->ntlm, "out of memory");
   goto done;
  }

  out_len = out_start - out;

  out = new_out;
  out_start = new_out + out_len;
  out_end = out + out_size;


  out_end -= (direction == unicode_builtin_utf8_to_16) ? 2 : 1;
 }

done:
 if (!success) {
  free(out);
  return 0;
 }

 out_len = (out_start - out);


 out[out_len] = '\0';

 if (direction == unicode_builtin_utf8_to_16)
  out[out_len+1] = '\0';

 *converted = out;
 *converted_len = out_len;
 return 1;
}
