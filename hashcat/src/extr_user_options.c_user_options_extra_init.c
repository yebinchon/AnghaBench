
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int attack_mode; int benchmark; int example_hashes; int backend_info; int keyspace; int hc_argc; int stdout_flag; int ** hc_argv; int rule_buf_r; int rule_buf_l; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_6__ {scalar_t__ attack_kern; int rule_len_l; int rule_len_r; int hc_workc; void* wordlist_mode; int ** hc_workv; int * hc_hash; } ;
typedef TYPE_2__ user_options_extra_t ;
struct TYPE_7__ {TYPE_2__* user_options_extra; TYPE_1__* user_options; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 scalar_t__ ATTACK_KERN_BF ;
 scalar_t__ ATTACK_KERN_COMBI ;
 scalar_t__ ATTACK_KERN_NONE ;
 scalar_t__ ATTACK_KERN_STRAIGHT ;





 void* WL_MODE_FILE ;
 void* WL_MODE_MASK ;
 void* WL_MODE_NONE ;
 void* WL_MODE_STDIN ;
 scalar_t__ strlen (int ) ;

void user_options_extra_init (hashcat_ctx_t *hashcat_ctx)
{
  user_options_t *user_options = hashcat_ctx->user_options;
  user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;



  user_options_extra->attack_kern = ATTACK_KERN_NONE;

  switch (user_options->attack_mode)
  {
    case 128: user_options_extra->attack_kern = ATTACK_KERN_STRAIGHT; break;
    case 131: user_options_extra->attack_kern = ATTACK_KERN_COMBI; break;
    case 132: user_options_extra->attack_kern = ATTACK_KERN_BF; break;
    case 130: user_options_extra->attack_kern = ATTACK_KERN_COMBI; break;
    case 129: user_options_extra->attack_kern = ATTACK_KERN_COMBI; break;
  }



  user_options_extra->rule_len_l = (int) strlen (user_options->rule_buf_l);
  user_options_extra->rule_len_r = (int) strlen (user_options->rule_buf_r);



  user_options_extra->hc_hash = ((void*)0);
  user_options_extra->hc_workv = ((void*)0);
  user_options_extra->hc_workc = 0;

  if (user_options->benchmark == 1)
  {

  }
  else if (user_options->example_hashes == 1)
  {

  }
  else if (user_options->backend_info == 1)
  {

  }
  else if (user_options->keyspace == 1)
  {
    user_options_extra->hc_workc = user_options->hc_argc;
    user_options_extra->hc_workv = user_options->hc_argv;
  }
  else if (user_options->stdout_flag == 1)
  {
    user_options_extra->hc_workc = user_options->hc_argc;
    user_options_extra->hc_workv = user_options->hc_argv;
  }
  else
  {
    user_options_extra->hc_hash = user_options->hc_argv[0];
    user_options_extra->hc_workc = user_options->hc_argc - 1;
    user_options_extra->hc_workv = user_options->hc_argv + 1;
  }



  user_options_extra->wordlist_mode = WL_MODE_NONE;

  if (user_options_extra->attack_kern == ATTACK_KERN_STRAIGHT)
  {
    user_options_extra->wordlist_mode = (user_options_extra->hc_workc >= 1) ? WL_MODE_FILE : WL_MODE_STDIN;
  }
  else if (user_options_extra->attack_kern == ATTACK_KERN_COMBI)
  {
    user_options_extra->wordlist_mode = WL_MODE_FILE;
  }
  else if (user_options_extra->attack_kern == ATTACK_KERN_BF)
  {
    user_options_extra->wordlist_mode = WL_MODE_MASK;
  }
}
