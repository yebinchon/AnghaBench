
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {TYPE_2__* debugfile_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int enabled; int mode; int fp; } ;
typedef TYPE_2__ debugfile_ctx_t ;


 void* EOL ;
 int debugfile_format_plain (TYPE_1__*,int const*,int const) ;
 int hc_fputc (char,int *) ;
 int hc_fwrite (void*,int const,int,int *) ;
 int const strlen (void*) ;

void debugfile_write_append (hashcat_ctx_t *hashcat_ctx, const u8 *rule_buf, const u32 rule_len, const u8 *mod_plain_ptr, const u32 mod_plain_len, const u8 *orig_plain_ptr, const u32 orig_plain_len)
{
  debugfile_ctx_t *debugfile_ctx = hashcat_ctx->debugfile_ctx;

  if (debugfile_ctx->enabled == 0) return;

  const u32 debug_mode = debugfile_ctx->mode;

  if ((debug_mode == 2) || (debug_mode == 3) || (debug_mode == 4))
  {
    debugfile_format_plain (hashcat_ctx, orig_plain_ptr, orig_plain_len);

    if ((debug_mode == 3) || (debug_mode == 4)) hc_fputc (':', &debugfile_ctx->fp);
  }

  hc_fwrite ((void *)rule_buf, rule_len, 1, &debugfile_ctx->fp);

  if (debug_mode == 4)
  {
    hc_fputc (':', &debugfile_ctx->fp);

    debugfile_format_plain (hashcat_ctx, mod_plain_ptr, mod_plain_len);
  }

  hc_fwrite (EOL, strlen (EOL), 1, &debugfile_ctx->fp);
}
