
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int name; } ;
struct strbuf {int buf; } ;


 int is_git_directory (int ) ;
 int null_oid ;
 char* read_gitfile (int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_git_path (struct strbuf*,char*,char*,int ) ;
 int strbuf_reset (struct strbuf*) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 int the_repository ;

int submodule_to_gitdir(struct strbuf *buf, const char *submodule)
{
 const struct submodule *sub;
 const char *git_dir;
 int ret = 0;

 strbuf_reset(buf);
 strbuf_addstr(buf, submodule);
 strbuf_complete(buf, '/');
 strbuf_addstr(buf, ".git");

 git_dir = read_gitfile(buf->buf);
 if (git_dir) {
  strbuf_reset(buf);
  strbuf_addstr(buf, git_dir);
 }
 if (!is_git_directory(buf->buf)) {
  sub = submodule_from_path(the_repository, &null_oid, submodule);
  if (!sub) {
   ret = -1;
   goto cleanup;
  }
  strbuf_reset(buf);
  strbuf_git_path(buf, "%s/%s", "modules", sub->name);
 }

cleanup:
 return ret;
}
