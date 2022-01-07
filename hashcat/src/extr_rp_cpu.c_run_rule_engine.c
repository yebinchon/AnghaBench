
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const RULE_OP_MANGLE_NOOP ;

int run_rule_engine (const int rule_len, const char *rule_buf)
{
  if (rule_len == 0) return 0;

  if (rule_len == 1)
    if (rule_buf[0] == RULE_OP_MANGLE_NOOP) return 0;

  return 1;
}
