
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {scalar_t__ no_commit; } ;


 int _ (char*) ;
 int advise (int ) ;
 int fprintf (int ,char*,char*) ;
 char* getenv (char*) ;
 int git_path_cherry_pick_head (struct repository*) ;
 int stderr ;
 int unlink (int ) ;

__attribute__((used)) static void print_advice(struct repository *r, int show_hint,
    struct replay_opts *opts)
{
 char *msg = getenv("GIT_CHERRY_PICK_HELP");

 if (msg) {
  fprintf(stderr, "%s\n", msg);





  unlink(git_path_cherry_pick_head(r));
  return;
 }

 if (show_hint) {
  if (opts->no_commit)
   advise(_("after resolving the conflicts, mark the corrected paths\n"
     "with 'git add <paths>' or 'git rm <paths>'"));
  else
   advise(_("after resolving the conflicts, mark the corrected paths\n"
     "with 'git add <paths>' or 'git rm <paths>'\n"
     "and commit the result with 'git commit'"));
 }
}
