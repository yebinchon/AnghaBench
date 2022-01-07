
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rp_gen; int rp_gen_func_max; int rp_gen_func_min; } ;
typedef TYPE_1__ user_options_t ;
typedef scalar_t__ u32 ;
typedef int kernel_rule_t ;
struct TYPE_5__ {TYPE_1__* user_options; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int RP_RULE_SIZE ;
 int cpu_rule_to_kernel_rule (char*,int,int *) ;
 int generate_random_rule (char*,int ,int ) ;
 scalar_t__ hccalloc (scalar_t__,int) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (int ) ;
 int memset (char*,int ,int ) ;

int kernel_rules_generate (hashcat_ctx_t *hashcat_ctx, kernel_rule_t **out_buf, u32 *out_cnt)
{
  const user_options_t *user_options = hashcat_ctx->user_options;

  u32 kernel_rules_cnt = 0;
  kernel_rule_t *kernel_rules_buf = (kernel_rule_t *) hccalloc (user_options->rp_gen, sizeof (kernel_rule_t));

  char *rule_buf = (char *) hcmalloc (RP_RULE_SIZE);

  for (kernel_rules_cnt = 0; kernel_rules_cnt < user_options->rp_gen; kernel_rules_cnt++)
  {
    memset (rule_buf, 0, RP_RULE_SIZE);

    int rule_len = generate_random_rule (rule_buf, user_options->rp_gen_func_min, user_options->rp_gen_func_max);

    if (cpu_rule_to_kernel_rule (rule_buf, rule_len, &kernel_rules_buf[kernel_rules_cnt]) == -1) continue;
  }

  hcfree (rule_buf);

  *out_cnt = kernel_rules_cnt;
  *out_buf = kernel_rules_buf;

  return 0;
}
