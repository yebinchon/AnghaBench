
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; int is_current; } ;
struct strbuf {int dummy; } ;







 int is_main_worktree (struct worktree const*) ;
 int ref_type (char const*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

void strbuf_worktree_ref(const struct worktree *wt,
    struct strbuf *sb,
    const char *refname)
{
 switch (ref_type(refname)) {
 case 128:
 case 129:
  if (wt && !wt->is_current) {
   if (is_main_worktree(wt))
    strbuf_addstr(sb, "main-worktree/");
   else
    strbuf_addf(sb, "worktrees/%s/", wt->id);
  }
  break;

 case 132:
 case 130:
  break;

 case 131:





  break;
 }
 strbuf_addstr(sb, refname);
}
