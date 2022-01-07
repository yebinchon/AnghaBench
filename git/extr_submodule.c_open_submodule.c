
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct repository {int submodule_prefix; } ;


 struct strbuf STRBUF_INIT ;
 int free (struct repository*) ;
 scalar_t__ repo_init (struct repository*,int ,int *) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ submodule_to_gitdir (struct strbuf*,char const*) ;
 struct repository* xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct repository *open_submodule(const char *path)
{
 struct strbuf sb = STRBUF_INIT;
 struct repository *out = xmalloc(sizeof(*out));

 if (submodule_to_gitdir(&sb, path) || repo_init(out, sb.buf, ((void*)0))) {
  strbuf_release(&sb);
  free(out);
  return ((void*)0);
 }


 out->submodule_prefix = xstrdup(path);

 strbuf_release(&sb);
 return out;
}
