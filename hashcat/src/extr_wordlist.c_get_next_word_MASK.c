#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ pos; scalar_t__ cnt; char* buf; int iconv_enabled; char* iconv_tmp; int /*<<< orphan*/  iconv_ctx; int /*<<< orphan*/  (* func ) (char*,scalar_t__,int*,int*) ;} ;
typedef  TYPE_1__ wl_data_t ;
struct TYPE_9__ {int /*<<< orphan*/  rule_buf_l; } ;
typedef  TYPE_2__ user_options_t ;
struct TYPE_10__ {int /*<<< orphan*/  rule_len_l; } ;
typedef  TYPE_3__ user_options_extra_t ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  rule_buf_out ;
struct TYPE_11__ {TYPE_1__* wl_data; TYPE_3__* user_options_extra; TYPE_2__* user_options; } ;
typedef  TYPE_4__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 size_t HCBUFSIZ_TINY ; 
 int PW_MAX ; 
 int RP_PASSWORD_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,int*,int*) ; 

void FUNC9 (hashcat_ctx_t *hashcat_ctx, HCFILE *fp, char **out_buf, u32 *out_len)
{
  user_options_t       *user_options       = hashcat_ctx->user_options;
  user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;
  wl_data_t            *wl_data            = hashcat_ctx->wl_data;

  while (wl_data->pos < wl_data->cnt)
  {
    u64 off;
    u64 len;

    char *ptr = wl_data->buf + wl_data->pos;

    wl_data->func (ptr, wl_data->cnt - wl_data->pos, &len, &off);

    wl_data->pos += off;

    // do the on-the-fly hex decode using original buffer
    // this is safe as length only decreases in size

    len = (u32) FUNC1 (hashcat_ctx, ptr, len);

    // do the on-the-fly encoding
    // needs to write into new buffer because size case both decrease and increase

    if (wl_data->iconv_enabled == true)
    {
      char  *iconv_ptr = wl_data->iconv_tmp;
      size_t iconv_sz  = HCBUFSIZ_TINY;

      size_t ptr_len = len;

      const size_t iconv_rc = FUNC4 (wl_data->iconv_ctx, &ptr, &ptr_len, &iconv_ptr, &iconv_sz);

      if (iconv_rc == (size_t) -1) continue;

      ptr = wl_data->iconv_tmp;
      len = HCBUFSIZ_TINY - iconv_sz;
    }

    // this is only a test for length, not writing into output buffer

    if (FUNC7 (user_options_extra->rule_len_l, user_options->rule_buf_l))
    {
      if (len >= RP_PASSWORD_SIZE) continue;

      char rule_buf_out[RP_PASSWORD_SIZE];

      FUNC6 (rule_buf_out, 0, sizeof (rule_buf_out));

      const int rule_len_out = FUNC0 (user_options->rule_buf_l, user_options_extra->rule_len_l, ptr, (u32) len, rule_buf_out);

      if (rule_len_out < 0) continue;
    }

    if (len > PW_MAX) continue;

    *out_buf = ptr;
    *out_len = (u32) len;

    return;
  }

  if (FUNC3 (fp))
  {
    FUNC2 (stderr, "BUG feof()!!\n");

    return;
  }

  FUNC5 (hashcat_ctx, fp);

  FUNC9 (hashcat_ctx, fp, out_buf, out_len);
}