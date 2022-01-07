
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int increment; scalar_t__ increment_min; scalar_t__ increment_max; scalar_t__ attack_mode; } ;
typedef TYPE_1__ user_options_t ;
typedef scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ pw_min; scalar_t__ pw_max; int opts_type; } ;
typedef TYPE_2__ hashconfig_t ;
struct TYPE_9__ {TYPE_1__* user_options; TYPE_2__* hashconfig; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 scalar_t__ ATTACK_MODE_BF ;
 scalar_t__ MAX (scalar_t__,scalar_t__ const) ;
 scalar_t__ MIN (scalar_t__,scalar_t__ const) ;
 int hc_asprintf (char**,char*,char const*,char const*) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (int) ;
 int mask_append_final (TYPE_3__*,char const*) ;
 scalar_t__ mp_get_length (char const*,int ) ;
 int mp_get_truncated_mask (TYPE_3__*,char const*,int ,scalar_t__,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int mask_append (hashcat_ctx_t *hashcat_ctx, const char *mask, const char *prepend)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->increment == 1)
  {
    const u32 mask_length = mp_get_length (mask, hashconfig->opts_type);

    u32 increment_min = user_options->increment_min;
    u32 increment_max = user_options->increment_max;

    increment_max = MIN (increment_max, mask_length);

    if (user_options->attack_mode == ATTACK_MODE_BF)
    {
      const u32 pw_min = hashconfig->pw_min;
      const u32 pw_max = hashconfig->pw_max;

      increment_min = MAX (increment_min, pw_min);
      increment_max = MIN (increment_max, pw_max);
    }

    for (u32 increment_len = increment_min; increment_len <= increment_max; increment_len++)
    {
      char *mask_truncated = (char *) hcmalloc (256);

      char *mask_truncated_next = mask_truncated;

      if (prepend)
      {


        mask_truncated_next += snprintf (mask_truncated, 256, "%s,", prepend);
      }

      if (mp_get_truncated_mask (hashcat_ctx, mask, strlen (mask), increment_len, mask_truncated_next) == -1)
      {
        hcfree (mask_truncated);

        break;
      }

      const int rc = mask_append_final (hashcat_ctx, mask_truncated);

      hcfree (mask_truncated);

      if (rc == -1) return -1;
    }
  }
  else
  {
    if (prepend)
    {


      char *prepend_mask = ((void*)0);

      hc_asprintf (&prepend_mask, "%s,%s", prepend, mask);

      const int rc = mask_append_final (hashcat_ctx, prepend_mask);

      hcfree (prepend_mask);

      if (rc == -1) return -1;
    }
    else
    {
      if (mask_append_final (hashcat_ctx, mask) == -1) return -1;
    }
  }

  return 0;
}
