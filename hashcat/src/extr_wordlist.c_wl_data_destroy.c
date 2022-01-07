
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int enabled; int iconv_enabled; int iconv_tmp; int iconv_ctx; int buf; } ;
typedef TYPE_1__ wl_data_t ;
struct TYPE_6__ {TYPE_1__* wl_data; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int hcfree (int ) ;
 int iconv_close (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void wl_data_destroy (hashcat_ctx_t *hashcat_ctx)
{
  wl_data_t *wl_data = hashcat_ctx->wl_data;

  if (wl_data->enabled == 0) return;

  hcfree (wl_data->buf);

  if (wl_data->iconv_enabled == 1)
  {
    iconv_close (wl_data->iconv_ctx);

    wl_data->iconv_enabled = 0;

    hcfree (wl_data->iconv_tmp);
  }

  memset (wl_data, 0, sizeof (wl_data_t));
}
