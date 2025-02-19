
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pos; scalar_t__ cnt; char* buf; int iconv_enabled; char* iconv_tmp; int iconv_ctx; int (* func ) (char*,scalar_t__,int*,int*) ;} ;
typedef TYPE_1__ wl_data_t ;
struct TYPE_9__ {int rule_buf_l; } ;
typedef TYPE_2__ user_options_t ;
struct TYPE_10__ {int rule_len_l; } ;
typedef TYPE_3__ user_options_extra_t ;
typedef int u64 ;
typedef int u32 ;
typedef int rule_buf_out ;
struct TYPE_11__ {TYPE_1__* wl_data; TYPE_3__* user_options_extra; TYPE_2__* user_options; } ;
typedef TYPE_4__ hashcat_ctx_t ;
typedef int HCFILE ;


 size_t HCBUFSIZ_TINY ;
 int PW_MAX ;
 int RP_PASSWORD_SIZE ;
 int _old_apply_rule (int ,int ,char*,int,char*) ;
 scalar_t__ convert_from_hex (TYPE_4__*,char*,int) ;
 int fprintf (int ,char*) ;
 scalar_t__ hc_feof (int *) ;
 size_t iconv (int ,char**,size_t*,char**,size_t*) ;
 int load_segment (TYPE_4__*,int *) ;
 int memset (char*,int ,int) ;
 scalar_t__ run_rule_engine (int ,int ) ;
 int stderr ;
 int stub1 (char*,scalar_t__,int*,int*) ;

void get_next_word (hashcat_ctx_t *hashcat_ctx, HCFILE *fp, char **out_buf, u32 *out_len)
{
  user_options_t *user_options = hashcat_ctx->user_options;
  user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;
  wl_data_t *wl_data = hashcat_ctx->wl_data;

  while (wl_data->pos < wl_data->cnt)
  {
    u64 off;
    u64 len;

    char *ptr = wl_data->buf + wl_data->pos;

    wl_data->func (ptr, wl_data->cnt - wl_data->pos, &len, &off);

    wl_data->pos += off;




    len = (u32) convert_from_hex (hashcat_ctx, ptr, len);




    if (wl_data->iconv_enabled == 1)
    {
      char *iconv_ptr = wl_data->iconv_tmp;
      size_t iconv_sz = HCBUFSIZ_TINY;

      size_t ptr_len = len;

      const size_t iconv_rc = iconv (wl_data->iconv_ctx, &ptr, &ptr_len, &iconv_ptr, &iconv_sz);

      if (iconv_rc == (size_t) -1) continue;

      ptr = wl_data->iconv_tmp;
      len = HCBUFSIZ_TINY - iconv_sz;
    }



    if (run_rule_engine (user_options_extra->rule_len_l, user_options->rule_buf_l))
    {
      if (len >= RP_PASSWORD_SIZE) continue;

      char rule_buf_out[RP_PASSWORD_SIZE];

      memset (rule_buf_out, 0, sizeof (rule_buf_out));

      const int rule_len_out = _old_apply_rule (user_options->rule_buf_l, user_options_extra->rule_len_l, ptr, (u32) len, rule_buf_out);

      if (rule_len_out < 0) continue;
    }

    if (len > PW_MAX) continue;

    *out_buf = ptr;
    *out_len = (u32) len;

    return;
  }

  if (hc_feof (fp))
  {
    fprintf (stderr, "BUG feof()!!\n");

    return;
  }

  load_segment (hashcat_ctx, fp);

  get_next_word (hashcat_ctx, fp, out_buf, out_len);
}
