#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rp_gen; int /*<<< orphan*/  rp_gen_func_max; int /*<<< orphan*/  rp_gen_func_min; } ;
typedef  TYPE_1__ user_options_t ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  kernel_rule_t ;
struct TYPE_5__ {TYPE_1__* user_options; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  RP_RULE_SIZE ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6 (hashcat_ctx_t *hashcat_ctx, kernel_rule_t **out_buf, u32 *out_cnt)
{
  const user_options_t *user_options = hashcat_ctx->user_options;

  u32            kernel_rules_cnt = 0;
  kernel_rule_t *kernel_rules_buf = (kernel_rule_t *) FUNC2 (user_options->rp_gen, sizeof (kernel_rule_t));

  char *rule_buf = (char *) FUNC4 (RP_RULE_SIZE);

  for (kernel_rules_cnt = 0; kernel_rules_cnt < user_options->rp_gen; kernel_rules_cnt++)
  {
    FUNC5 (rule_buf, 0, RP_RULE_SIZE);

    int rule_len = FUNC1 (rule_buf, user_options->rp_gen_func_min, user_options->rp_gen_func_max);

    if (FUNC0 (rule_buf, rule_len, &kernel_rules_buf[kernel_rules_cnt]) == -1) continue;
  }

  FUNC3 (rule_buf);

  *out_cnt = kernel_rules_cnt;
  *out_buf = kernel_rules_buf;

  return 0;
}