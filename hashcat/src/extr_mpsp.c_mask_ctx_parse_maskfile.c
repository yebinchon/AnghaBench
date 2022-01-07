
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* custom_charset_1; char* custom_charset_2; char* custom_charset_3; char* custom_charset_4; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_9__ {size_t mf_len; char* mf_buf; } ;
typedef TYPE_2__ mf_t ;
struct TYPE_10__ {int enabled; int mask_from_file; char* mask; int mp_usr; int mp_sys; TYPE_2__* mfs; } ;
typedef TYPE_3__ mask_ctx_t ;
struct TYPE_11__ {TYPE_1__* user_options; TYPE_3__* mask_ctx; } ;
typedef TYPE_4__ hashcat_ctx_t ;


 size_t MAX_MFS ;
 int event_log_error (TYPE_4__*,char*,char*) ;
 int mp_reset_usr (int ,int) ;
 int mp_setup_usr (TYPE_4__*,int ,int ,char*,int) ;
 size_t strlen (char*) ;

int mask_ctx_parse_maskfile (hashcat_ctx_t *hashcat_ctx)
{
  mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  if (mask_ctx->enabled == 0) return 0;

  if (mask_ctx->mask_from_file == 0) return 0;

  mf_t *mfs_buf = mask_ctx->mfs;

  mfs_buf[0].mf_len = 0;
  mfs_buf[1].mf_len = 0;
  mfs_buf[2].mf_len = 0;
  mfs_buf[3].mf_len = 0;
  mfs_buf[4].mf_len = 0;

  size_t mfs_cnt = 0;

  char *mask_buf = mask_ctx->mask;

  const size_t mask_len = strlen (mask_buf);

  bool escaped = 0;

  for (size_t i = 0; i < mask_len; i++)
  {
    mf_t *mf = mfs_buf + mfs_cnt;

    if (escaped == 1)
    {
      escaped = 0;

      mf->mf_buf[mf->mf_len] = mask_buf[i];

      mf->mf_len++;
    }
    else
    {
      if (mask_buf[i] == '\\')
      {
        escaped = 1;
      }
      else if (mask_buf[i] == ',')
      {
        mf->mf_buf[mf->mf_len] = 0;

        mfs_cnt++;

        if (mfs_cnt == MAX_MFS)
        {
          event_log_error (hashcat_ctx, "Invalid line '%s' in maskfile.", mask_buf);

          return -1;
        }
      }
      else
      {
        mf->mf_buf[mf->mf_len] = mask_buf[i];

        mf->mf_len++;
      }
    }
  }

  mf_t *mf = mfs_buf + mfs_cnt;

  mf->mf_buf[mf->mf_len] = 0;

  user_options->custom_charset_1 = ((void*)0);
  user_options->custom_charset_2 = ((void*)0);
  user_options->custom_charset_3 = ((void*)0);
  user_options->custom_charset_4 = ((void*)0);

  mp_reset_usr (mask_ctx->mp_usr, 0);
  mp_reset_usr (mask_ctx->mp_usr, 1);
  mp_reset_usr (mask_ctx->mp_usr, 2);
  mp_reset_usr (mask_ctx->mp_usr, 3);

  for (size_t i = 0; i < mfs_cnt; i++)
  {
    switch (i)
    {
      case 0:
        user_options->custom_charset_1 = mfs_buf[0].mf_buf;
        mp_setup_usr (hashcat_ctx, mask_ctx->mp_sys, mask_ctx->mp_usr, user_options->custom_charset_1, 0);
        break;

      case 1:
        user_options->custom_charset_2 = mfs_buf[1].mf_buf;
        mp_setup_usr (hashcat_ctx, mask_ctx->mp_sys, mask_ctx->mp_usr, user_options->custom_charset_2, 1);
        break;

      case 2:
        user_options->custom_charset_3 = mfs_buf[2].mf_buf;
        mp_setup_usr (hashcat_ctx, mask_ctx->mp_sys, mask_ctx->mp_usr, user_options->custom_charset_3, 2);
        break;

      case 3:
        user_options->custom_charset_4 = mfs_buf[3].mf_buf;
        mp_setup_usr (hashcat_ctx, mask_ctx->mp_sys, mask_ctx->mp_usr, user_options->custom_charset_4, 3);
        break;
    }
  }

  mask_ctx->mask = mfs_buf[mfs_cnt].mf_buf;

  return 0;
}
