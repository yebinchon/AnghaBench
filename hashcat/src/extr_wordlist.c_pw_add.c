
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int cnt; int len; int off; } ;
typedef TYPE_1__ pw_idx_t ;
struct TYPE_5__ {scalar_t__ pws_cnt; scalar_t__ kernel_power; int pws_comp; TYPE_1__* pws_idx; } ;
typedef TYPE_2__ hc_device_param_t ;


 int fprintf (int ,char*) ;
 int memcpy (int *,int const*,int const) ;
 int memset (int *,int ,int const) ;
 int stderr ;

void pw_add (hc_device_param_t *device_param, const u8 *pw_buf, const int pw_len)
{
  if (device_param->pws_cnt < device_param->kernel_power)
  {
    pw_idx_t *pw_idx = device_param->pws_idx + device_param->pws_cnt;

    const u32 pw_len4 = (pw_len + 3) & ~3;

    const u32 pw_len4_cnt = pw_len4 / 4;

    pw_idx->cnt = pw_len4_cnt;
    pw_idx->len = pw_len;

    u8 *dst = (u8 *) (device_param->pws_comp + pw_idx->off);

    memcpy (dst, pw_buf, pw_len);

    memset (dst + pw_len, 0, pw_len4 - pw_len);



    pw_idx_t *pw_idx_next = pw_idx + 1;

    pw_idx_next->off = pw_idx->off + pw_idx->cnt;

    device_param->pws_cnt++;
  }
  else
  {
    fprintf (stderr, "BUG pw_add()!!\n");

    return;
  }
}
