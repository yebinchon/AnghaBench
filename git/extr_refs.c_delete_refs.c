
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int get_main_ref_store (int ) ;
 int refs_delete_refs (int ,char const*,struct string_list*,unsigned int) ;
 int the_repository ;

int delete_refs(const char *msg, struct string_list *refnames,
  unsigned int flags)
{
 return refs_delete_refs(get_main_ref_store(the_repository), msg, refnames, flags);
}
