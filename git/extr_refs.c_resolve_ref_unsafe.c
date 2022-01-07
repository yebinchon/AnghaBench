
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int get_main_ref_store (int ) ;
 char const* refs_resolve_ref_unsafe (int ,char const*,int,struct object_id*,int*) ;
 int the_repository ;

const char *resolve_ref_unsafe(const char *refname, int resolve_flags,
          struct object_id *oid, int *flags)
{
 return refs_resolve_ref_unsafe(get_main_ref_store(the_repository), refname,
           resolve_flags, oid, flags);
}
