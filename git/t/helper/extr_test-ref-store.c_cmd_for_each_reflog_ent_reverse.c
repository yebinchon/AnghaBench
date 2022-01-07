
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 int each_reflog ;
 char* notnull (int ,char*) ;
 int refs_for_each_reflog_ent_reverse (struct ref_store*,char const*,int ,struct ref_store*) ;

__attribute__((used)) static int cmd_for_each_reflog_ent_reverse(struct ref_store *refs, const char **argv)
{
 const char *refname = notnull(*argv++, "refname");

 return refs_for_each_reflog_ent_reverse(refs, refname, each_reflog, refs);
}
