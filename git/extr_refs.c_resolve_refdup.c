
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int get_main_ref_store (int ) ;
 char* refs_resolve_refdup (int ,char const*,int,struct object_id*,int*) ;
 int the_repository ;

char *resolve_refdup(const char *refname, int resolve_flags,
       struct object_id *oid, int *flags)
{
 return refs_resolve_refdup(get_main_ref_store(the_repository),
       refname, resolve_flags,
       oid, flags);
}
