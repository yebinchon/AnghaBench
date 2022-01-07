
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int different_commondir; int commondir; int gitdir; } ;


 struct strbuf STRBUF_INIT ;
 int free (int ) ;
 int get_common_dir_noenv (struct strbuf*,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void repo_set_commondir(struct repository *repo,
          const char *commondir)
{
 struct strbuf sb = STRBUF_INIT;

 free(repo->commondir);

 if (commondir) {
  repo->different_commondir = 1;
  repo->commondir = xstrdup(commondir);
  return;
 }

 repo->different_commondir = get_common_dir_noenv(&sb, repo->gitdir);
 repo->commondir = strbuf_detach(&sb, ((void*)0));
}
