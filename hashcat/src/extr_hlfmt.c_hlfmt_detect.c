
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int hlfmt_disable; } ;
typedef TYPE_1__ hashconfig_t ;
struct TYPE_8__ {TYPE_1__* hashconfig; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int HCFILE ;


 int HCBUFSIZ_LARGE ;
 scalar_t__ HLFMTS_CNT ;
 scalar_t__ HLFMT_HASHCAT ;
 size_t HLFMT_PASSWD ;
 size_t HLFMT_PWDUMP ;
 size_t HLFMT_SHADOW ;
 size_t fgetl (int *,char*,int ) ;
 int free (scalar_t__*) ;
 int hc_feof (int *) ;
 scalar_t__ hccalloc (scalar_t__,int) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (int ) ;
 scalar_t__ hlfmt_detect_passwd (TYPE_2__*,char*,size_t const) ;
 scalar_t__ hlfmt_detect_pwdump (TYPE_2__*,char*,size_t const) ;
 scalar_t__ hlfmt_detect_shadow (TYPE_2__*,char*,size_t const) ;

u32 hlfmt_detect (hashcat_ctx_t *hashcat_ctx, HCFILE *fp, u32 max_check)
{
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;



  if (hashconfig->hlfmt_disable == 1) return HLFMT_HASHCAT;

  u32 *formats_cnt = (u32 *) hccalloc (HLFMTS_CNT, sizeof (u32));

  u32 num_check = 0;

  char *line_buf = (char *) hcmalloc (HCBUFSIZ_LARGE);

  while (!hc_feof (fp))
  {
    const size_t line_len = fgetl (fp, line_buf, HCBUFSIZ_LARGE);

    if (line_len == 0) continue;

    if (hlfmt_detect_pwdump (hashcat_ctx, line_buf, line_len)) formats_cnt[HLFMT_PWDUMP]++;
    if (hlfmt_detect_passwd (hashcat_ctx, line_buf, line_len)) formats_cnt[HLFMT_PASSWD]++;
    if (hlfmt_detect_shadow (hashcat_ctx, line_buf, line_len)) formats_cnt[HLFMT_SHADOW]++;

    if (num_check == max_check) break;

    num_check++;
  }

  hcfree (line_buf);

  u32 hashlist_format = HLFMT_HASHCAT;

  for (u32 i = 1; i < HLFMTS_CNT; i++)
  {
    if (formats_cnt[i - 1] >= formats_cnt[i]) continue;

    hashlist_format = i;
  }

  free (formats_cnt);

  return hashlist_format;
}
