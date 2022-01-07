
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;
struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct has_commit_data {int member_1; char const* member_2; int result; struct repository* member_0; } ;
struct child_process {int git_cmd; int no_stdin; char const* dir; int env_array; struct has_commit_data args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 scalar_t__ GIT_MAX_HEXSZ ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ add_submodule_odb (char const*) ;
 int append_oid_to_argv ;
 int argv_array_pushl (struct has_commit_data*,char*,char*,char*,...) ;
 scalar_t__ capture_command (struct child_process*,struct strbuf*,scalar_t__) ;
 int check_has_commit ;
 int oid_array_for_each_unique (struct oid_array*,int ,struct has_commit_data*) ;
 int prepare_submodule_repo_env (int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int submodule_has_commits(struct repository *r,
     const char *path,
     struct oid_array *commits)
{
 struct has_commit_data has_commit = { r, 1, path };
 if (add_submodule_odb(path))
  return 0;

 oid_array_for_each_unique(commits, check_has_commit, &has_commit);

 if (has_commit.result) {





  struct child_process cp = CHILD_PROCESS_INIT;
  struct strbuf out = STRBUF_INIT;

  argv_array_pushl(&cp.args, "rev-list", "-n", "1", ((void*)0));
  oid_array_for_each_unique(commits, append_oid_to_argv, &cp.args);
  argv_array_pushl(&cp.args, "--not", "--all", ((void*)0));

  prepare_submodule_repo_env(&cp.env_array);
  cp.git_cmd = 1;
  cp.no_stdin = 1;
  cp.dir = path;

  if (capture_command(&cp, &out, GIT_MAX_HEXSZ + 1) || out.len)
   has_commit.result = 0;

  strbuf_release(&out);
 }

 return has_commit.result;
}
