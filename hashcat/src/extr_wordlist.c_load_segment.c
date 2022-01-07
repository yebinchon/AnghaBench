
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cnt; char* buf; int avail; scalar_t__ incr; scalar_t__ pos; } ;
typedef TYPE_1__ wl_data_t ;
struct TYPE_5__ {TYPE_1__* wl_data; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int HCFILE ;


 int const EOF ;
 int hc_feof (int *) ;
 int hc_fgetc (int *) ;
 size_t hc_fread (char*,int,scalar_t__,int *) ;
 scalar_t__ hcrealloc (char*,int,scalar_t__) ;

int load_segment (hashcat_ctx_t *hashcat_ctx, HCFILE *fp)
{
  wl_data_t *wl_data = hashcat_ctx->wl_data;



  wl_data->pos = 0;

  wl_data->cnt = hc_fread (wl_data->buf, 1, wl_data->incr - 1000, fp);

  wl_data->buf[wl_data->cnt] = 0;

  if (wl_data->cnt == 0) return 0;

  if (wl_data->buf[wl_data->cnt - 1] == '\n') return 0;

  while (!hc_feof (fp))
  {
    if (wl_data->cnt == wl_data->avail)
    {
      wl_data->buf = (char *) hcrealloc (wl_data->buf, wl_data->avail, wl_data->incr);

      wl_data->avail += wl_data->incr;
    }

    const int c = hc_fgetc (fp);

    if (c == EOF) break;

    wl_data->buf[wl_data->cnt] = (char) c;

    wl_data->cnt++;

    if (c == '\n') break;
  }



  if (wl_data->buf[wl_data->cnt - 1] != '\n')
  {
    wl_data->cnt++;

    wl_data->buf[wl_data->cnt - 1] = '\n';
  }

  return 0;
}
