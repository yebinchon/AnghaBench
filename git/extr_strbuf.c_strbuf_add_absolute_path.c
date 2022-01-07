
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int * buf; } ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 int die (char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int is_absolute_path (char const*) ;
 int is_dir_sep (int ) ;
 int stat (char*,struct stat*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* xgetcwd () ;

void strbuf_add_absolute_path(struct strbuf *sb, const char *path)
{
 if (!*path)
  die("The empty string is not a valid path");
 if (!is_absolute_path(path)) {
  struct stat cwd_stat, pwd_stat;
  size_t orig_len = sb->len;
  char *cwd = xgetcwd();
  char *pwd = getenv("PWD");
  if (pwd && strcmp(pwd, cwd) &&
      !stat(cwd, &cwd_stat) &&
      (cwd_stat.st_dev || cwd_stat.st_ino) &&
      !stat(pwd, &pwd_stat) &&
      pwd_stat.st_dev == cwd_stat.st_dev &&
      pwd_stat.st_ino == cwd_stat.st_ino)
   strbuf_addstr(sb, pwd);
  else
   strbuf_addstr(sb, cwd);
  if (sb->len > orig_len && !is_dir_sep(sb->buf[sb->len - 1]))
   strbuf_addch(sb, '/');
  free(cwd);
 }
 strbuf_addstr(sb, path);
}
