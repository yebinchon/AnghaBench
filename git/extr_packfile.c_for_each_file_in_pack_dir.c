
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;
struct dirent {char* d_name; } ;
typedef int (* each_file_in_pack_dir_fn ) (int ,size_t,char*,void*) ;
typedef int DIR ;


 scalar_t__ ENOENT ;
 struct strbuf STRBUF_INIT ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int error_errno (char*,int ) ;
 scalar_t__ is_dot_or_dotdot (char*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

void for_each_file_in_pack_dir(const char *objdir,
          each_file_in_pack_dir_fn fn,
          void *data)
{
 struct strbuf path = STRBUF_INIT;
 size_t dirnamelen;
 DIR *dir;
 struct dirent *de;

 strbuf_addstr(&path, objdir);
 strbuf_addstr(&path, "/pack");
 dir = opendir(path.buf);
 if (!dir) {
  if (errno != ENOENT)
   error_errno("unable to open object pack directory: %s",
        path.buf);
  strbuf_release(&path);
  return;
 }
 strbuf_addch(&path, '/');
 dirnamelen = path.len;
 while ((de = readdir(dir)) != ((void*)0)) {
  if (is_dot_or_dotdot(de->d_name))
   continue;

  strbuf_setlen(&path, dirnamelen);
  strbuf_addstr(&path, de->d_name);

  fn(path.buf, path.len, de->d_name, data);
 }

 closedir(dir);
 strbuf_release(&path);
}
