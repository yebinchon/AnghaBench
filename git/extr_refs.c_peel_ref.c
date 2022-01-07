
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int get_main_ref_store (int ) ;
 int refs_peel_ref (int ,char const*,struct object_id*) ;
 int the_repository ;

int peel_ref(const char *refname, struct object_id *oid)
{
 return refs_peel_ref(get_main_ref_store(the_repository), refname, oid);
}
