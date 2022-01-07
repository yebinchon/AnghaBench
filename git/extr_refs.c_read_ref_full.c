
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int get_main_ref_store (int ) ;
 int refs_read_ref_full (int ,char const*,int,struct object_id*,int*) ;
 int the_repository ;

int read_ref_full(const char *refname, int resolve_flags, struct object_id *oid, int *flags)
{
 return refs_read_ref_full(get_main_ref_store(the_repository), refname,
      resolve_flags, oid, flags);
}
