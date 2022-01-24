#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  rule_buf_l; int /*<<< orphan*/  encoding_from; int /*<<< orphan*/  encoding_to; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_18__ {scalar_t__ attack_kern; scalar_t__ rule_len_l; } ;
typedef  TYPE_2__ user_options_extra_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_19__ {int kernel_rules_cnt; } ;
typedef  TYPE_3__ straight_ctx_t ;
struct TYPE_20__ {int run_thread_level1; int* words_progress_rejected; int /*<<< orphan*/  mux_counter; int /*<<< orphan*/  mux_dispatcher; scalar_t__ stdin_read_timeout_cnt; } ;
typedef  TYPE_4__ status_ctx_t ;
typedef  int /*<<< orphan*/  rule_buf_out ;
typedef  scalar_t__ iconv_t ;
struct TYPE_21__ {char* pws_comp; int size_pws_comp; char* pws_idx; int size_pws_idx; scalar_t__ pws_cnt; scalar_t__ kernel_power; int speed_only_finish; scalar_t__ kernel_loops; scalar_t__ kernel_accel; scalar_t__ kernel_loops_prev; scalar_t__ kernel_accel_prev; } ;
typedef  TYPE_5__ hc_device_param_t ;
struct TYPE_22__ {scalar_t__ salts_cnt; } ;
typedef  TYPE_6__ hashes_t ;
struct TYPE_23__ {size_t pw_min; size_t pw_max; } ;
typedef  TYPE_7__ hashconfig_t ;
struct TYPE_24__ {TYPE_4__* status_ctx; TYPE_3__* straight_ctx; TYPE_6__* hashes; TYPE_7__* hashconfig; TYPE_2__* user_options_extra; TYPE_1__* user_options; } ;
typedef  TYPE_8__ hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ const ATTACK_KERN_STRAIGHT ; 
 int HCBUFSIZ_LARGE ; 
 size_t HCBUFSIZ_TINY ; 
 size_t PW_MAX ; 
 int RP_PASSWORD_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char*,int,char*) ; 
 size_t FUNC1 (TYPE_8__*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (size_t) ; 
 size_t FUNC8 (scalar_t__,char**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/  const*,int const) ; 
 int FUNC14 (TYPE_8__*,TYPE_5__*,scalar_t__) ; 
 int FUNC15 (TYPE_8__*,TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19 (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param)
{
  user_options_t       *user_options       = hashcat_ctx->user_options;
  user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;
  hashconfig_t         *hashconfig         = hashcat_ctx->hashconfig;
  hashes_t             *hashes             = hashcat_ctx->hashes;
  straight_ctx_t       *straight_ctx       = hashcat_ctx->straight_ctx;
  status_ctx_t         *status_ctx         = hashcat_ctx->status_ctx;

  char *buf = (char *) FUNC7 (HCBUFSIZ_LARGE);

  bool iconv_enabled = false;

  iconv_t iconv_ctx = NULL;

  char *iconv_tmp = NULL;

  if (FUNC18 (user_options->encoding_from, user_options->encoding_to) != 0)
  {
    iconv_enabled = true;

    iconv_ctx = FUNC10 (user_options->encoding_to, user_options->encoding_from);

    if (iconv_ctx == (iconv_t) -1)
    {
      FUNC6 (buf);

      return -1;
    }

    iconv_tmp = (char *) FUNC7 (HCBUFSIZ_TINY);
  }

  while (status_ctx->run_thread_level1 == true)
  {
    FUNC4 (status_ctx->mux_dispatcher);

    if (FUNC2 (stdin) != 0)
    {
      FUNC5 (status_ctx->mux_dispatcher);

      break;
    }

    u64 words_extra_total = 0;

    FUNC12 (device_param->pws_comp, 0, device_param->size_pws_comp);
    FUNC12 (device_param->pws_idx,  0, device_param->size_pws_idx);

    while (device_param->pws_cnt < device_param->kernel_power)
    {
      const int rc_select = FUNC17 (1);

      if (rc_select == -1) break;

      if (rc_select == 0)
      {
        if (status_ctx->run_thread_level1 == false) break;

        status_ctx->stdin_read_timeout_cnt++;

        continue;
      }

      status_ctx->stdin_read_timeout_cnt = 0;

      char *line_buf = FUNC3 (buf, HCBUFSIZ_LARGE - 1, stdin);

      if (line_buf == NULL) break;

      size_t line_len = FUNC11 (line_buf);

      line_len = FUNC1 (hashcat_ctx, line_buf, (u32) line_len);

      // do the on-the-fly encoding

      if (iconv_enabled == true)
      {
        char  *iconv_ptr = iconv_tmp;
        size_t iconv_sz  = HCBUFSIZ_TINY;

        if (FUNC8 (iconv_ctx, &line_buf, &line_len, &iconv_ptr, &iconv_sz) == (size_t) -1) continue;

        line_buf = iconv_tmp;
        line_len = HCBUFSIZ_TINY - iconv_sz;
      }

      // post-process rule engine

      char rule_buf_out[RP_PASSWORD_SIZE];

      if (FUNC16 ((int) user_options_extra->rule_len_l, user_options->rule_buf_l))
      {
        if (line_len >= RP_PASSWORD_SIZE) continue;

        FUNC12 (rule_buf_out, 0, sizeof (rule_buf_out));

        const int rule_len_out = FUNC0 (user_options->rule_buf_l, (int) user_options_extra->rule_len_l, line_buf, (int) line_len, rule_buf_out);

        if (rule_len_out < 0) continue;

        line_buf = rule_buf_out;
        line_len = (size_t) rule_len_out;
      }

      if (line_len > PW_MAX) continue;

      // hmm that's always the case, or?

      const u32 attack_kern = user_options_extra->attack_kern;

      if (attack_kern == ATTACK_KERN_STRAIGHT)
      {
        if ((line_len < hashconfig->pw_min) || (line_len > hashconfig->pw_max))
        {
          words_extra_total++;

          continue;
        }
      }

      FUNC13 (device_param, (const u8 *) line_buf, (const int) line_len);

      if (status_ctx->run_thread_level1 == false) break;
    }

    FUNC5 (status_ctx->mux_dispatcher);

    if (words_extra_total > 0)
    {
      FUNC4 (status_ctx->mux_counter);

      for (u32 salt_pos = 0; salt_pos < hashes->salts_cnt; salt_pos++)
      {
        status_ctx->words_progress_rejected[salt_pos] += words_extra_total * straight_ctx->kernel_rules_cnt;
      }

      FUNC5 (status_ctx->mux_counter);
    }

    if (status_ctx->run_thread_level1 == false) break;

    if (device_param->pws_cnt == 0) break;

    // flush

    if (FUNC14 (hashcat_ctx, device_param, device_param->pws_cnt) == -1)
    {
      FUNC6 (buf);

      return -1;
    }

    if (FUNC15 (hashcat_ctx, device_param, device_param->pws_cnt) == -1)
    {
      FUNC6 (buf);

      return -1;
    }

    device_param->pws_cnt = 0;

    if (status_ctx->run_thread_level1 == false) break;

    if (device_param->speed_only_finish == true) break;
  }

  device_param->kernel_accel_prev = device_param->kernel_accel;
  device_param->kernel_loops_prev = device_param->kernel_loops;

  device_param->kernel_accel = 0;
  device_param->kernel_loops = 0;

  if (iconv_enabled == true)
  {
    FUNC9 (iconv_ctx);

    FUNC6 (iconv_tmp);
  }

  FUNC6 (buf);

  return 0;
}