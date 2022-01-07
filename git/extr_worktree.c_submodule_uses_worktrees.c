
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ len; } ;
struct repository_format {scalar_t__ version; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 struct repository_format REPOSITORY_FORMAT_INIT ;
 struct strbuf STRBUF_INIT ;
 int clear_repository_format (struct repository_format*) ;
 int closedir (int *) ;
 int free (char*) ;
 int get_common_dir_noenv (struct strbuf*,char*) ;
 char* git_pathdup_submodule (char const*,char*,char*) ;
 scalar_t__ is_dot_or_dotdot (int ) ;
 int * opendir (int ) ;
 int read_repository_format (struct repository_format*,int ) ;
 struct dirent* readdir (int *) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

int submodule_uses_worktrees(const char *path)
{
 char *submodule_gitdir;
 struct strbuf sb = STRBUF_INIT;
 DIR *dir;
 struct dirent *d;
 int ret = 0;
 struct repository_format format = REPOSITORY_FORMAT_INIT;

 submodule_gitdir = git_pathdup_submodule(path, "%s", "");
 if (!submodule_gitdir)
  return 0;


 get_common_dir_noenv(&sb, submodule_gitdir);
 free(submodule_gitdir);





 strbuf_addstr(&sb, "/config");
 read_repository_format(&format, sb.buf);
 if (format.version != 0) {
  strbuf_release(&sb);
  clear_repository_format(&format);
  return 1;
 }
 clear_repository_format(&format);


 strbuf_setlen(&sb, sb.len - strlen("config"));
 strbuf_addstr(&sb, "worktrees");


 dir = opendir(sb.buf);
 strbuf_release(&sb);

 if (!dir)
  return 0;

 while ((d = readdir(dir)) != ((void*)0)) {
  if (is_dot_or_dotdot(d->d_name))
   continue;

  ret = 1;
  break;
 }
 closedir(dir);
 return ret;
}
