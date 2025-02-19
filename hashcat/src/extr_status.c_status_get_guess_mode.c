
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rp_files_cnt; scalar_t__ rp_gen; scalar_t__ attack_mode; scalar_t__ custom_charset_4; scalar_t__ custom_charset_3; scalar_t__ custom_charset_2; scalar_t__ custom_charset_1; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_7__ {scalar_t__ wordlist_mode; } ;
typedef TYPE_2__ user_options_extra_t ;
struct TYPE_8__ {TYPE_2__* user_options_extra; TYPE_1__* user_options; TYPE_4__* combinator_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_9__ {scalar_t__ combs_mode; } ;
typedef TYPE_4__ combinator_ctx_t ;


 scalar_t__ ATTACK_MODE_BF ;
 scalar_t__ ATTACK_MODE_COMBI ;
 scalar_t__ ATTACK_MODE_HYBRID1 ;
 scalar_t__ ATTACK_MODE_HYBRID2 ;
 scalar_t__ ATTACK_MODE_STRAIGHT ;
 scalar_t__ COMBINATOR_MODE_BASE_LEFT ;
 int GUESS_MODE_COMBINATOR_BASE_LEFT ;
 int GUESS_MODE_COMBINATOR_BASE_RIGHT ;
 int GUESS_MODE_HYBRID1 ;
 int GUESS_MODE_HYBRID1_CS ;
 int GUESS_MODE_HYBRID2 ;
 int GUESS_MODE_HYBRID2_CS ;
 int GUESS_MODE_MASK ;
 int GUESS_MODE_MASK_CS ;
 int GUESS_MODE_NONE ;
 int GUESS_MODE_STRAIGHT_FILE ;
 int GUESS_MODE_STRAIGHT_FILE_RULES_FILE ;
 int GUESS_MODE_STRAIGHT_FILE_RULES_GEN ;
 int GUESS_MODE_STRAIGHT_STDIN ;
 int GUESS_MODE_STRAIGHT_STDIN_RULES_FILE ;
 int GUESS_MODE_STRAIGHT_STDIN_RULES_GEN ;
 scalar_t__ WL_MODE_FILE ;

int status_get_guess_mode (const hashcat_ctx_t *hashcat_ctx)
{
  const combinator_ctx_t *combinator_ctx = hashcat_ctx->combinator_ctx;
  const user_options_t *user_options = hashcat_ctx->user_options;
  const user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;

  bool has_wordlist = 0;
  bool has_rule_file = 0;
  bool has_rule_gen = 0;
  bool has_base_left = 0;
  bool has_mask_cs = 0;

  if (user_options_extra->wordlist_mode == WL_MODE_FILE) has_wordlist = 1;

  if (user_options->rp_files_cnt > 0) has_rule_file = 1;
  if (user_options->rp_gen > 0) has_rule_gen = 1;

  if (combinator_ctx->combs_mode == COMBINATOR_MODE_BASE_LEFT) has_base_left = 1;

  if (user_options->custom_charset_1) has_mask_cs = 1;
  if (user_options->custom_charset_2) has_mask_cs = 1;
  if (user_options->custom_charset_3) has_mask_cs = 1;
  if (user_options->custom_charset_4) has_mask_cs = 1;

  if (user_options->attack_mode == ATTACK_MODE_STRAIGHT)
  {
    if (has_wordlist == 1)
    {
      if (has_rule_file == 1)
      {
        return GUESS_MODE_STRAIGHT_FILE_RULES_FILE;
      }
      if (has_rule_gen == 1)
      {
        return GUESS_MODE_STRAIGHT_FILE_RULES_GEN;
      }
      return GUESS_MODE_STRAIGHT_FILE;
    }
    if (has_rule_file == 1)
    {
      return GUESS_MODE_STRAIGHT_STDIN_RULES_FILE;
    }
    if (has_rule_gen == 1)
    {
      return GUESS_MODE_STRAIGHT_STDIN_RULES_GEN;
    }
    return GUESS_MODE_STRAIGHT_STDIN;
  }

  if (user_options->attack_mode == ATTACK_MODE_COMBI)
  {
    if (has_base_left == 1)
    {
      return GUESS_MODE_COMBINATOR_BASE_LEFT;
    }
    return GUESS_MODE_COMBINATOR_BASE_RIGHT;
  }

  if (user_options->attack_mode == ATTACK_MODE_BF)
  {
    if (has_mask_cs == 1)
    {
      return GUESS_MODE_MASK_CS;
    }
    return GUESS_MODE_MASK;
  }

  if (user_options->attack_mode == ATTACK_MODE_HYBRID1)
  {
    if (has_mask_cs == 1)
    {
      return GUESS_MODE_HYBRID1_CS;
    }
    return GUESS_MODE_HYBRID1;
  }

  if (user_options->attack_mode == ATTACK_MODE_HYBRID2)
  {
    if (has_mask_cs == 1)
    {
      return GUESS_MODE_HYBRID2_CS;
    }
    return GUESS_MODE_HYBRID2;
  }

  return GUESS_MODE_NONE;
}
