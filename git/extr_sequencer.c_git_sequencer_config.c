
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {int explicit_cleanup; int * gpg_sign; int default_msg_cleanup; } ;


 int COMMIT_MSG_CLEANUP_ALL ;
 int COMMIT_MSG_CLEANUP_NONE ;
 int COMMIT_MSG_CLEANUP_SCISSORS ;
 int COMMIT_MSG_CLEANUP_SPACE ;
 int _ (char*) ;
 int free (char*) ;
 scalar_t__ git_config_bool (char const*,char const*) ;
 int git_config_string (char const**,char const*,char const*) ;
 int git_diff_basic_config (char const*,char const*,int *) ;
 int git_gpg_config (char const*,char const*,int *) ;
 int strcmp (char const*,char*) ;
 int warning (int ,char const*) ;
 int * xstrdup (char*) ;

__attribute__((used)) static int git_sequencer_config(const char *k, const char *v, void *cb)
{
 struct replay_opts *opts = cb;
 int status;

 if (!strcmp(k, "commit.cleanup")) {
  const char *s;

  status = git_config_string(&s, k, v);
  if (status)
   return status;

  if (!strcmp(s, "verbatim")) {
   opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_NONE;
   opts->explicit_cleanup = 1;
  } else if (!strcmp(s, "whitespace")) {
   opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_SPACE;
   opts->explicit_cleanup = 1;
  } else if (!strcmp(s, "strip")) {
   opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_ALL;
   opts->explicit_cleanup = 1;
  } else if (!strcmp(s, "scissors")) {
   opts->default_msg_cleanup = COMMIT_MSG_CLEANUP_SCISSORS;
   opts->explicit_cleanup = 1;
  } else {
   warning(_("invalid commit message cleanup mode '%s'"),
      s);
  }

  free((char *)s);
  return status;
 }

 if (!strcmp(k, "commit.gpgsign")) {
  opts->gpg_sign = git_config_bool(k, v) ? xstrdup("") : ((void*)0);
  return 0;
 }

 status = git_gpg_config(k, v, ((void*)0));
 if (status)
  return status;

 return git_diff_basic_config(k, v, ((void*)0));
}
