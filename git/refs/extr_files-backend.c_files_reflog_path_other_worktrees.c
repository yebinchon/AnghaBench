
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct files_ref_store {int gitcommondir; } ;


 int BUG (char*,char const*) ;
 scalar_t__ parse_worktree_ref (char const*,char const**,int*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,int ,...) ;

__attribute__((used)) static void files_reflog_path_other_worktrees(struct files_ref_store *refs,
           struct strbuf *sb,
           const char *refname)
{
 const char *real_ref;
 const char *worktree_name;
 int length;

 if (parse_worktree_ref(refname, &worktree_name, &length, &real_ref))
  BUG("refname %s is not a other-worktree ref", refname);

 if (worktree_name)
  strbuf_addf(sb, "%s/worktrees/%.*s/logs/%s", refs->gitcommondir,
       length, worktree_name, real_ref);
 else
  strbuf_addf(sb, "%s/logs/%s", refs->gitcommondir,
       real_ref);
}
