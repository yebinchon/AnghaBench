
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct child_process {int git_cmd; int no_stdin; int out; char const* dir; int env_array; int args; } ;
struct TYPE_2__ {scalar_t__ hexsz; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int append_oid_to_argv ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushl (int *,char*,char*,char*,char*,int *) ;
 int close (int) ;
 int die (char*,char const*) ;
 int finish_command (struct child_process*) ;
 scalar_t__ for_each_remote_ref_submodule (char const*,int ,int *) ;
 int has_remote ;
 int oid_array_for_each_unique (struct oid_array*,int ,int *) ;
 int prepare_submodule_repo_env (int *) ;
 scalar_t__ start_command (struct child_process*) ;
 scalar_t__ strbuf_read (struct strbuf*,int,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int submodule_has_commits (struct repository*,char const*,struct oid_array*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int submodule_needs_pushing(struct repository *r,
       const char *path,
       struct oid_array *commits)
{
 if (!submodule_has_commits(r, path, commits))
  return 0;

 if (for_each_remote_ref_submodule(path, has_remote, ((void*)0)) > 0) {
  struct child_process cp = CHILD_PROCESS_INIT;
  struct strbuf buf = STRBUF_INIT;
  int needs_pushing = 0;

  argv_array_push(&cp.args, "rev-list");
  oid_array_for_each_unique(commits, append_oid_to_argv, &cp.args);
  argv_array_pushl(&cp.args, "--not", "--remotes", "-n", "1" , ((void*)0));

  prepare_submodule_repo_env(&cp.env_array);
  cp.git_cmd = 1;
  cp.no_stdin = 1;
  cp.out = -1;
  cp.dir = path;
  if (start_command(&cp))
   die("Could not run 'git rev-list <commits> --not --remotes -n 1' command in submodule %s",
     path);
  if (strbuf_read(&buf, cp.out, the_hash_algo->hexsz + 1))
   needs_pushing = 1;
  finish_command(&cp);
  close(cp.out);
  strbuf_release(&buf);
  return needs_pushing;
 }

 return 0;
}
