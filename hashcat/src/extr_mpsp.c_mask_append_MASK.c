#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int increment; scalar_t__ increment_min; scalar_t__ increment_max; scalar_t__ attack_mode; } ;
typedef  TYPE_1__ user_options_t ;
typedef  scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ pw_min; scalar_t__ pw_max; int /*<<< orphan*/  opts_type; } ;
typedef  TYPE_2__ hashconfig_t ;
struct TYPE_9__ {TYPE_1__* user_options; TYPE_2__* hashconfig; } ;
typedef  TYPE_3__ hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ ATTACK_MODE_BF ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__ const) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (TYPE_3__*,char const*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,char const*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10 (hashcat_ctx_t *hashcat_ctx, const char *mask, const char *prepend)
{
  hashconfig_t   *hashconfig   = hashcat_ctx->hashconfig;
  user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->increment == true)
  {
    const u32 mask_length = FUNC6 (mask, hashconfig->opts_type);

    u32 increment_min = user_options->increment_min;
    u32 increment_max = user_options->increment_max;

    increment_max = FUNC1 (increment_max, mask_length);

    if (user_options->attack_mode == ATTACK_MODE_BF)
    {
      const u32 pw_min = hashconfig->pw_min;
      const u32 pw_max = hashconfig->pw_max;

      increment_min = FUNC0 (increment_min, pw_min);
      increment_max = FUNC1 (increment_max, pw_max);
    }

    for (u32 increment_len = increment_min; increment_len <= increment_max; increment_len++)
    {
      char *mask_truncated = (char *) FUNC4 (256);

      char *mask_truncated_next = mask_truncated;

      if (prepend)
      {
        // this happens with maskfiles only

        mask_truncated_next += FUNC8 (mask_truncated, 256, "%s,", prepend);
      }

      if (FUNC7 (hashcat_ctx, mask, FUNC9 (mask), increment_len, mask_truncated_next) == -1)
      {
        FUNC3 (mask_truncated);

        break;
      }

      const int rc = FUNC5 (hashcat_ctx, mask_truncated);

      FUNC3 (mask_truncated);

      if (rc == -1) return -1;
    }
  }
  else
  {
    if (prepend)
    {
      // this happens with maskfiles only

      char *prepend_mask = NULL;

      FUNC2 (&prepend_mask, "%s,%s", prepend, mask);

      const int rc = FUNC5 (hashcat_ctx, prepend_mask);

      FUNC3 (prepend_mask);

      if (rc == -1) return -1;
    }
    else
    {
      if (FUNC5 (hashcat_ctx, mask) == -1) return -1;
    }
  }

  return 0;
}