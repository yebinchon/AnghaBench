
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 int each_ref ;
 char* notnull (int ,char*) ;
 int refs_for_each_ref_in (struct ref_store*,char const*,int ,int *) ;

__attribute__((used)) static int cmd_for_each_ref(struct ref_store *refs, const char **argv)
{
 const char *prefix = notnull(*argv++, "prefix");

 return refs_for_each_ref_in(refs, prefix, each_ref, ((void*)0));
}
