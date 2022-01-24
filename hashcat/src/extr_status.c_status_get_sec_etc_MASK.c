#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ wordlist_mode; } ;
typedef  TYPE_1__ user_options_extra_t ;
typedef  double u64 ;
typedef  double time_t ;
struct TYPE_10__ {scalar_t__ devices_status; } ;
typedef  TYPE_2__ status_ctx_t ;
struct TYPE_11__ {TYPE_1__* user_options_extra; TYPE_2__* status_ctx; } ;
typedef  TYPE_3__ hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ STATUS_CRACKED ; 
 scalar_t__ WL_MODE_FILE ; 
 scalar_t__ WL_MODE_MASK ; 
 double FUNC0 (TYPE_3__ const*) ; 
 double FUNC1 (TYPE_3__ const*) ; 
 double FUNC2 (TYPE_3__ const*) ; 
 double FUNC3 (TYPE_3__ const*) ; 

time_t FUNC4 (const hashcat_ctx_t *hashcat_ctx)
{
  const status_ctx_t         *status_ctx         = hashcat_ctx->status_ctx;
  const user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;

  time_t sec_etc = 0;

  if ((user_options_extra->wordlist_mode == WL_MODE_FILE) || (user_options_extra->wordlist_mode == WL_MODE_MASK))
  {
    if (status_ctx->devices_status != STATUS_CRACKED)
    {
      const u64 progress_cur_relative_skip = FUNC1 (hashcat_ctx);
      const u64 progress_end_relative_skip = FUNC2 (hashcat_ctx);

      const u64 progress_ignore = FUNC3 (hashcat_ctx);

      const double hashes_msec_all = FUNC0 (hashcat_ctx);

      if (hashes_msec_all > 0)
      {
        const u64 progress_left_relative_skip = progress_end_relative_skip - progress_cur_relative_skip;

        u64 msec_left = (u64) ((progress_left_relative_skip - progress_ignore) / hashes_msec_all);

        sec_etc = msec_left / 1000;
      }
    }
  }

  return sec_etc;
}