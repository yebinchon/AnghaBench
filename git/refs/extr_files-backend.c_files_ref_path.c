
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct files_ref_store {int gitcommondir; int gitdir; } ;


 int BUG (char*,...) ;





 int ref_type (char const*) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;

__attribute__((used)) static void files_ref_path(struct files_ref_store *refs,
      struct strbuf *sb,
      const char *refname)
{
 switch (ref_type(refname)) {
 case 129:
 case 128:
  strbuf_addf(sb, "%s/%s", refs->gitdir, refname);
  break;
 case 132:
  if (!skip_prefix(refname, "main-worktree/", &refname))
   BUG("ref %s is not a main pseudoref", refname);

 case 130:
 case 131:
  strbuf_addf(sb, "%s/%s", refs->gitcommondir, refname);
  break;
 default:
  BUG("unknown ref type %d of ref %s",
      ref_type(refname), refname);
 }
}
