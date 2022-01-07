
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wordlist_autohex_disable; } ;
typedef TYPE_1__ user_options_t ;
typedef int u8 ;
struct TYPE_6__ {int opts_type; } ;
typedef TYPE_2__ hashconfig_t ;
struct TYPE_7__ {TYPE_1__* user_options; TYPE_2__* hashconfig; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 int OPTS_TYPE_PT_HEX ;
 size_t exec_unhexify (int const*,size_t const,int *,size_t const) ;
 char hex_to_u8 (int const*) ;
 int is_hexify (int const*,size_t const) ;
 int memset (char*,int ,size_t const) ;

size_t convert_from_hex (hashcat_ctx_t *hashcat_ctx, char *line_buf, const size_t line_len)
{
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  const user_options_t *user_options = hashcat_ctx->user_options;

  if (line_len & 1) return (line_len);

  if (hashconfig->opts_type & OPTS_TYPE_PT_HEX)
  {
    size_t i, j;

    for (i = 0, j = 0; j < line_len; i += 1, j += 2)
    {
      line_buf[i] = hex_to_u8 ((const u8 *) &line_buf[j]);
    }

    memset (line_buf + i, 0, line_len - i);

    return (i);
  }

  if (user_options->wordlist_autohex_disable == 0)
  {
    if (is_hexify ((const u8 *) line_buf, line_len) == 1)
    {
      const size_t new_len = exec_unhexify ((const u8 *) line_buf, line_len, (u8 *) line_buf, line_len);

      return new_len;
    }
  }

  return (line_len);
}
