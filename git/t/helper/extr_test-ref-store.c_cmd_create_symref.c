
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 char* notnull (int ,char*) ;
 int refs_create_symref (struct ref_store*,char const*,char const*,char const*) ;

__attribute__((used)) static int cmd_create_symref(struct ref_store *refs, const char **argv)
{
 const char *refname = notnull(*argv++, "refname");
 const char *target = notnull(*argv++, "target");
 const char *logmsg = *argv++;

 return refs_create_symref(refs, refname, target, logmsg);
}
