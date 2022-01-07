
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int enabled; char* buf; int iconv_enabled; scalar_t__ iconv_ctx; char* iconv_tmp; int func; scalar_t__ pos; scalar_t__ cnt; int incr; int avail; } ;
typedef TYPE_1__ wl_data_t ;
struct TYPE_7__ {int benchmark; int example_hashes; int left; int backend_info; int usage; int version; int encoding_from; int encoding_to; int segment_size; } ;
typedef TYPE_2__ user_options_t ;
typedef scalar_t__ iconv_t ;
struct TYPE_8__ {int opts_type; } ;
typedef TYPE_3__ hashconfig_t ;
struct TYPE_9__ {TYPE_1__* wl_data; TYPE_2__* user_options; TYPE_3__* hashconfig; } ;
typedef TYPE_4__ hashcat_ctx_t ;


 int HCBUFSIZ_TINY ;
 int OPTS_TYPE_PT_LM ;
 int OPTS_TYPE_PT_UPPER ;
 int get_next_word_lm ;
 int get_next_word_std ;
 int get_next_word_uc ;
 scalar_t__ hcmalloc (int ) ;
 scalar_t__ iconv_open (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

int wl_data_init (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  user_options_t *user_options = hashcat_ctx->user_options;
  wl_data_t *wl_data = hashcat_ctx->wl_data;

  wl_data->enabled = 0;

  if (user_options->benchmark == 1) return 0;
  if (user_options->example_hashes == 1) return 0;
  if (user_options->left == 1) return 0;
  if (user_options->backend_info == 1) return 0;
  if (user_options->usage == 1) return 0;
  if (user_options->version == 1) return 0;

  wl_data->enabled = 1;

  wl_data->buf = (char *) hcmalloc (user_options->segment_size);
  wl_data->avail = user_options->segment_size;
  wl_data->incr = user_options->segment_size;
  wl_data->cnt = 0;
  wl_data->pos = 0;





  wl_data->func = get_next_word_std;

  if (hashconfig->opts_type & OPTS_TYPE_PT_UPPER)
  {
    wl_data->func = get_next_word_uc;
  }

  if (hashconfig->opts_type & OPTS_TYPE_PT_LM)
  {
    wl_data->func = get_next_word_lm;
  }





  if (strcmp (user_options->encoding_from, user_options->encoding_to) != 0)
  {
    wl_data->iconv_enabled = 1;

    wl_data->iconv_ctx = iconv_open (user_options->encoding_to, user_options->encoding_from);

    if (wl_data->iconv_ctx == (iconv_t) -1) return -1;

    wl_data->iconv_tmp = (char *) hcmalloc (HCBUFSIZ_TINY);
  }

  return 0;
}
