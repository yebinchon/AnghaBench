
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct dirent {int d_name; } ;
struct cmdnames {int dummy; } ;
typedef int DIR ;


 struct strbuf STRBUF_INIT ;
 int add_cmdname (struct cmdnames*,char const*,size_t) ;
 int closedir (int *) ;
 int is_executable (int ) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int skip_prefix (int ,char const*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int strip_suffix (char const*,char*,size_t*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void list_commands_in_dir(struct cmdnames *cmds,
      const char *path,
      const char *prefix)
{
 DIR *dir = opendir(path);
 struct dirent *de;
 struct strbuf buf = STRBUF_INIT;
 int len;

 if (!dir)
  return;
 if (!prefix)
  prefix = "git-";

 strbuf_addf(&buf, "%s/", path);
 len = buf.len;

 while ((de = readdir(dir)) != ((void*)0)) {
  const char *ent;
  size_t entlen;

  if (!skip_prefix(de->d_name, prefix, &ent))
   continue;

  strbuf_setlen(&buf, len);
  strbuf_addstr(&buf, de->d_name);
  if (!is_executable(buf.buf))
   continue;

  entlen = strlen(ent);
  strip_suffix(ent, ".exe", &entlen);

  add_cmdname(cmds, ent, entlen);
 }
 closedir(dir);
 strbuf_release(&buf);
}
