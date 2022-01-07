
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_main_ref_store (int ) ;
 int refs_delete_reflog (int ,char const*) ;
 int the_repository ;

int delete_reflog(const char *refname)
{
 return refs_delete_reflog(get_main_ref_store(the_repository), refname);
}
