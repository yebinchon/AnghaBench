
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int len; int * buf; } ;
typedef enum discovery_result { ____Placeholder_discovery_result } discovery_result ;
typedef scalar_t__ dev_t ;


 int CEILING_DIRECTORIES_ENVIRONMENT ;
 char* DEFAULT_GIT_DIR_ENVIRONMENT ;
 int GIT_DIR_BARE ;
 int GIT_DIR_DISCOVERED ;
 int GIT_DIR_ENVIRONMENT ;
 int GIT_DIR_EXPLICIT ;
 int GIT_DIR_HIT_CEILING ;
 int GIT_DIR_HIT_MOUNT_POINT ;
 int GIT_DIR_INVALID_GITFILE ;
 int PATH_SEP ;
 int READ_GITFILE_ERR_NOT_A_FILE ;
 int READ_GITFILE_ERR_STAT_FAILED ;
 struct string_list STRING_LIST_INIT_DUP ;
 int canonicalize_ceiling_entry ;
 int filter_string_list (struct string_list*,int ,int ,int*) ;
 scalar_t__ get_device_or_die (int *,int *,int) ;
 char* getenv (int ) ;
 int git_env_bool (char*,int ) ;
 int is_dir_sep (int ) ;
 scalar_t__ is_git_directory (int *) ;
 int longest_ancestor_length (int *,struct string_list*) ;
 int offset_1st_component (int *) ;
 char* read_gitfile_gently (int *,int*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_split (struct string_list*,char const*,int ,int) ;

__attribute__((used)) static enum discovery_result setup_git_directory_gently_1(struct strbuf *dir,
         struct strbuf *gitdir,
         int die_on_error)
{
 const char *env_ceiling_dirs = getenv(CEILING_DIRECTORIES_ENVIRONMENT);
 struct string_list ceiling_dirs = STRING_LIST_INIT_DUP;
 const char *gitdirenv;
 int ceil_offset = -1, min_offset = offset_1st_component(dir->buf);
 dev_t current_device = 0;
 int one_filesystem = 1;






 gitdirenv = getenv(GIT_DIR_ENVIRONMENT);
 if (gitdirenv) {
  strbuf_addstr(gitdir, gitdirenv);
  return GIT_DIR_EXPLICIT;
 }

 if (env_ceiling_dirs) {
  int empty_entry_found = 0;

  string_list_split(&ceiling_dirs, env_ceiling_dirs, PATH_SEP, -1);
  filter_string_list(&ceiling_dirs, 0,
       canonicalize_ceiling_entry, &empty_entry_found);
  ceil_offset = longest_ancestor_length(dir->buf, &ceiling_dirs);
  string_list_clear(&ceiling_dirs, 0);
 }

 if (ceil_offset < 0)
  ceil_offset = min_offset - 2;

 if (min_offset && min_offset == dir->len &&
     !is_dir_sep(dir->buf[min_offset - 1])) {
  strbuf_addch(dir, '/');
  min_offset++;
 }
 one_filesystem = !git_env_bool("GIT_DISCOVERY_ACROSS_FILESYSTEM", 0);
 if (one_filesystem)
  current_device = get_device_or_die(dir->buf, ((void*)0), 0);
 for (;;) {
  int offset = dir->len, error_code = 0;

  if (offset > min_offset)
   strbuf_addch(dir, '/');
  strbuf_addstr(dir, DEFAULT_GIT_DIR_ENVIRONMENT);
  gitdirenv = read_gitfile_gently(dir->buf, die_on_error ?
      ((void*)0) : &error_code);
  if (!gitdirenv) {
   if (die_on_error ||
       error_code == READ_GITFILE_ERR_NOT_A_FILE) {

    if (is_git_directory(dir->buf))
     gitdirenv = DEFAULT_GIT_DIR_ENVIRONMENT;
   } else if (error_code != READ_GITFILE_ERR_STAT_FAILED)
    return GIT_DIR_INVALID_GITFILE;
  }
  strbuf_setlen(dir, offset);
  if (gitdirenv) {
   strbuf_addstr(gitdir, gitdirenv);
   return GIT_DIR_DISCOVERED;
  }

  if (is_git_directory(dir->buf)) {
   strbuf_addstr(gitdir, ".");
   return GIT_DIR_BARE;
  }

  if (offset <= min_offset)
   return GIT_DIR_HIT_CEILING;

  while (--offset > ceil_offset && !is_dir_sep(dir->buf[offset]))
   ;
  if (offset <= ceil_offset)
   return GIT_DIR_HIT_CEILING;

  strbuf_setlen(dir, offset > min_offset ? offset : min_offset);
  if (one_filesystem &&
      current_device != get_device_or_die(dir->buf, ((void*)0), offset))
   return GIT_DIR_HIT_MOUNT_POINT;
 }
}
