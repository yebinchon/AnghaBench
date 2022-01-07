
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct replay_opts {char* strategy; scalar_t__ xopts_nr; scalar_t__ allow_rerere_auto; char* gpg_sign; scalar_t__ reschedule_failed_exec; scalar_t__ signoff; scalar_t__ verbose; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 scalar_t__ RERERE_AUTOUPDATE ;
 scalar_t__ RERERE_NOAUTOUPDATE ;
 char* getenv (char*) ;
 char* oid_to_hex (int *) ;
 int rebase_path_allow_rerere_autoupdate () ;
 int rebase_path_gpg_sign_opt () ;
 int rebase_path_head_name () ;
 int rebase_path_onto () ;
 int rebase_path_orig_head () ;
 int rebase_path_quiet () ;
 int rebase_path_reschedule_failed_exec () ;
 int rebase_path_signoff () ;
 int rebase_path_strategy () ;
 int rebase_path_verbose () ;
 int write_file (int ,char*,...) ;
 int write_strategy_opts (struct replay_opts*) ;

int write_basic_state(struct replay_opts *opts, const char *head_name,
        struct commit *onto, const char *orig_head)
{
 const char *quiet = getenv("GIT_QUIET");

 if (head_name)
  write_file(rebase_path_head_name(), "%s\n", head_name);
 if (onto)
  write_file(rebase_path_onto(), "%s\n",
      oid_to_hex(&onto->object.oid));
 if (orig_head)
  write_file(rebase_path_orig_head(), "%s\n", orig_head);

 if (quiet)
  write_file(rebase_path_quiet(), "%s\n", quiet);
 if (opts->verbose)
  write_file(rebase_path_verbose(), "%s", "");
 if (opts->strategy)
  write_file(rebase_path_strategy(), "%s\n", opts->strategy);
 if (opts->xopts_nr > 0)
  write_strategy_opts(opts);

 if (opts->allow_rerere_auto == RERERE_AUTOUPDATE)
  write_file(rebase_path_allow_rerere_autoupdate(), "--rerere-autoupdate\n");
 else if (opts->allow_rerere_auto == RERERE_NOAUTOUPDATE)
  write_file(rebase_path_allow_rerere_autoupdate(), "--no-rerere-autoupdate\n");

 if (opts->gpg_sign)
  write_file(rebase_path_gpg_sign_opt(), "-S%s\n", opts->gpg_sign);
 if (opts->signoff)
  write_file(rebase_path_signoff(), "--signoff\n");
 if (opts->reschedule_failed_exec)
  write_file(rebase_path_reschedule_failed_exec(), "%s", "");

 return 0;
}
