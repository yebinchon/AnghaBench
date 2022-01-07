
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct replay_opts {int dummy; } ;
struct child_process {int git_cmd; int no_stdout; int no_stderr; int args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int argv_array_push (int *,char*) ;
 int error (char*,char*) ;
 int fprintf (int ,char*) ;
 int read_oneliner (struct strbuf*,int ,int) ;
 int rebase_path_autostash () ;
 scalar_t__ run_command (struct child_process*) ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;

__attribute__((used)) static int apply_autostash(struct replay_opts *opts)
{
 struct strbuf stash_sha1 = STRBUF_INIT;
 struct child_process child = CHILD_PROCESS_INIT;
 int ret = 0;

 if (!read_oneliner(&stash_sha1, rebase_path_autostash(), 1)) {
  strbuf_release(&stash_sha1);
  return 0;
 }
 strbuf_trim(&stash_sha1);

 child.git_cmd = 1;
 child.no_stdout = 1;
 child.no_stderr = 1;
 argv_array_push(&child.args, "stash");
 argv_array_push(&child.args, "apply");
 argv_array_push(&child.args, stash_sha1.buf);
 if (!run_command(&child))
  fprintf(stderr, _("Applied autostash.\n"));
 else {
  struct child_process store = CHILD_PROCESS_INIT;

  store.git_cmd = 1;
  argv_array_push(&store.args, "stash");
  argv_array_push(&store.args, "store");
  argv_array_push(&store.args, "-m");
  argv_array_push(&store.args, "autostash");
  argv_array_push(&store.args, "-q");
  argv_array_push(&store.args, stash_sha1.buf);
  if (run_command(&store))
   ret = error(_("cannot store %s"), stash_sha1.buf);
  else
   fprintf(stderr,
    _("Applying autostash resulted in conflicts.\n"
      "Your changes are safe in the stash.\n"
      "You can run \"git stash pop\" or"
      " \"git stash drop\" at any time.\n"));
 }

 strbuf_release(&stash_sha1);
 return ret;
}
