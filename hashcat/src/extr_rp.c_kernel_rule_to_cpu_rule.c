
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int kernel_rule_t ;


 int GET_NAME (int *) ;
 int GET_P0 (int *) ;
 int GET_P0_CONV (int *) ;
 int GET_P1 (int *) ;
 int GET_P1_CONV (int *) ;
 scalar_t__ HCBUFSIZ_LARGE ;
 scalar_t__ MAX_KERNEL_RULES ;
int kernel_rule_to_cpu_rule (char *rule_buf, kernel_rule_t *rule)
{
  u32 rule_cnt;
  u32 rule_pos;
  u32 rule_len = HCBUFSIZ_LARGE - 1;

  for (rule_cnt = 0, rule_pos = 0; rule_pos < rule_len && rule_cnt < MAX_KERNEL_RULES; rule_pos++, rule_cnt++)
  {
    char rule_cmd;

    GET_NAME (rule);

    if (rule_cnt > 0) rule_buf[rule_pos++] = ' ';

    switch (rule_cmd)
    {
      case 150:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 152:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 129:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 151:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 128:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 131:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 132:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 141:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 156:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 155:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 145:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 140:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 139:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 169:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0 (rule);
        break;

      case 147:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0 (rule);
        break;

      case 163:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 162:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 164:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 154:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        GET_P1_CONV (rule);
        break;

      case 149:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        GET_P1_CONV (rule);
        break;

      case 153:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        GET_P1 (rule);
        break;

      case 148:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        GET_P1 (rule);
        break;

      case 130:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 144:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0 (rule);
        GET_P1 (rule);
        break;

      case 146:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0 (rule);
        break;

      case 133:
        return -1;

      case 158:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 157:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 159:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 137:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 136:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 138:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        GET_P1_CONV (rule);
        break;

      case 166:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 165:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 167:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 168:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 142:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 143:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 161:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 160:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0_CONV (rule);
        break;

      case 135:
        rule_buf[rule_pos] = rule_cmd;
        break;

      case 134:
        rule_buf[rule_pos] = rule_cmd;
        GET_P0 (rule);
        break;

      case 0:
        if (rule_pos == 0) return -1;
        return rule_pos - 1;

      default:
        return -1;
    }
  }

  return rule_pos;
}
