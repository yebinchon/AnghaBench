
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct files_ref_store {int gitcommondir; int gitdir; } ;


 int BUG (char*,int,char const*) ;





 int files_reflog_path_other_worktrees (struct files_ref_store*,struct strbuf*,char const*) ;
 int ref_type (char const*) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;

__attribute__((used)) static void files_reflog_path(struct files_ref_store *refs,
         struct strbuf *sb,
         const char *refname)
{
 switch (ref_type(refname)) {
 case 129:
 case 128:
  strbuf_addf(sb, "%s/logs/%s", refs->gitdir, refname);
  break;
 case 130:
 case 132:
  files_reflog_path_other_worktrees(refs, sb, refname);
  break;
 case 131:
  strbuf_addf(sb, "%s/logs/%s", refs->gitcommondir, refname);
  break;
 default:
  BUG("unknown ref type %d of ref %s",
      ref_type(refname), refname);
 }
}
