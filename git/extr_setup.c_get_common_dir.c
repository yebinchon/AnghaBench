
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int GIT_COMMON_DIR_ENVIRONMENT ;
 int get_common_dir_noenv (struct strbuf*,char const*) ;
 char* getenv (int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

int get_common_dir(struct strbuf *sb, const char *gitdir)
{
 const char *git_env_common_dir = getenv(GIT_COMMON_DIR_ENVIRONMENT);
 if (git_env_common_dir) {
  strbuf_addstr(sb, git_env_common_dir);
  return 1;
 } else {
  return get_common_dir_noenv(sb, gitdir);
 }
}
