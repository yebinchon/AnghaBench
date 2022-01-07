
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 int RESOLVE_REF_READING ;
 int refs_resolve_ref_unsafe (struct ref_store*,char const*,int ,int *,int *) ;

__attribute__((used)) static int refs_ref_exists(struct ref_store *refs, const char *refname)
{
 return !!refs_resolve_ref_unsafe(refs, refname, RESOLVE_REF_READING, ((void*)0), ((void*)0));
}
