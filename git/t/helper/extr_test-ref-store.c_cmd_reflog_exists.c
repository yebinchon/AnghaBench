
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 char* notnull (int ,char*) ;
 int refs_reflog_exists (struct ref_store*,char const*) ;

__attribute__((used)) static int cmd_reflog_exists(struct ref_store *refs, const char **argv)
{
 const char *refname = notnull(*argv++, "refname");

 return !refs_reflog_exists(refs, refname);
}
