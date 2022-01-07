
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct repository {int index_file; } ;


 int _ (char*) ;
 int error (int ) ;
 char* git_path_commit_editmsg () ;
 scalar_t__ run_commit_hook (int ,int ,char*,char const*,char const*,char const*,int *) ;
 scalar_t__ write_message (int ,int ,char const*,int ) ;

__attribute__((used)) static int run_prepare_commit_msg_hook(struct repository *r,
           struct strbuf *msg,
           const char *commit)
{
 int ret = 0;
 const char *name, *arg1 = ((void*)0), *arg2 = ((void*)0);

 name = git_path_commit_editmsg();
 if (write_message(msg->buf, msg->len, name, 0))
  return -1;

 if (commit) {
  arg1 = "commit";
  arg2 = commit;
 } else {
  arg1 = "message";
 }
 if (run_commit_hook(0, r->index_file, "prepare-commit-msg", name,
       arg1, arg2, ((void*)0)))
  ret = error(_("'prepare-commit-msg' hook failed"));

 return ret;
}
