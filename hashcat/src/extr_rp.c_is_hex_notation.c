
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int is_valid_hex_char (char const) ;

bool is_hex_notation (const char *rule_buf, u32 rule_len, u32 rule_pos)
{
  if ((rule_pos + 4) > rule_len) return 0;

  if (rule_buf[rule_pos + 0] != '\\') return 0;
  if (rule_buf[rule_pos + 1] != 'x') return 0;

  if (is_valid_hex_char (rule_buf[rule_pos + 2]) == 0) return 0;
  if (is_valid_hex_char (rule_buf[rule_pos + 3]) == 0) return 0;

  return 1;
}
