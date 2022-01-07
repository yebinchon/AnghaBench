
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; scalar_t__ len; } ;
struct child_process {int git_cmd; int no_stdin; int out; char const* dir; int env_array; int args; } ;
typedef int FILE ;


 int BUG (char*,char*) ;
 struct child_process CHILD_PROCESS_INIT ;
 unsigned int DIRTY_SUBMODULE_MODIFIED ;
 unsigned int DIRTY_SUBMODULE_UNTRACKED ;
 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushl (int *,char*,char*,int *) ;
 int die (char*,char const*) ;
 int fclose (int *) ;
 scalar_t__ finish_command (struct child_process*) ;
 scalar_t__ is_directory (char const*) ;
 int is_git_directory (char const*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int prepare_submodule_repo_env (int *) ;
 char* read_gitfile (char*) ;
 scalar_t__ start_command (struct child_process*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 scalar_t__ strbuf_getwholeline (struct strbuf*,int *,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 scalar_t__ strlen (char*) ;
 int * xfdopen (int,char*) ;

unsigned is_submodule_modified(const char *path, int ignore_untracked)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 struct strbuf buf = STRBUF_INIT;
 FILE *fp;
 unsigned dirty_submodule = 0;
 const char *git_dir;
 int ignore_cp_exit_code = 0;

 strbuf_addf(&buf, "%s/.git", path);
 git_dir = read_gitfile(buf.buf);
 if (!git_dir)
  git_dir = buf.buf;
 if (!is_git_directory(git_dir)) {
  if (is_directory(git_dir))
   die(_("'%s' not recognized as a git repository"), git_dir);
  strbuf_release(&buf);

  return 0;
 }
 strbuf_reset(&buf);

 argv_array_pushl(&cp.args, "status", "--porcelain=2", ((void*)0));
 if (ignore_untracked)
  argv_array_push(&cp.args, "-uno");

 prepare_submodule_repo_env(&cp.env_array);
 cp.git_cmd = 1;
 cp.no_stdin = 1;
 cp.out = -1;
 cp.dir = path;
 if (start_command(&cp))
  die("Could not run 'git status --porcelain=2' in submodule %s", path);

 fp = xfdopen(cp.out, "r");
 while (strbuf_getwholeline(&buf, fp, '\n') != EOF) {

  if (buf.buf[0] == '?')
   dirty_submodule |= DIRTY_SUBMODULE_UNTRACKED;

  if (buf.buf[0] == 'u' ||
      buf.buf[0] == '1' ||
      buf.buf[0] == '2') {

   if (buf.len < strlen("T XY SSSS"))
    BUG("invalid status --porcelain=2 line %s",
        buf.buf);

   if (buf.buf[5] == 'S' && buf.buf[8] == 'U')

    dirty_submodule |= DIRTY_SUBMODULE_UNTRACKED;

   if (buf.buf[0] == 'u' ||
       buf.buf[0] == '2' ||
       memcmp(buf.buf + 5, "S..U", 4))

    dirty_submodule |= DIRTY_SUBMODULE_MODIFIED;
  }

  if ((dirty_submodule & DIRTY_SUBMODULE_MODIFIED) &&
      ((dirty_submodule & DIRTY_SUBMODULE_UNTRACKED) ||
       ignore_untracked)) {




   ignore_cp_exit_code = 1;
   break;
  }
 }
 fclose(fp);

 if (finish_command(&cp) && !ignore_cp_exit_code)
  die("'git status --porcelain=2' failed in submodule %s", path);

 strbuf_release(&buf);
 return dirty_submodule;
}
