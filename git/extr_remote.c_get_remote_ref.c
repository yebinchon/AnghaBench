
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;


 struct ref* copy_ref (struct ref const*) ;
 struct ref* find_ref_by_name_abbrev (struct ref const*,char const*) ;

struct ref *get_remote_ref(const struct ref *remote_refs, const char *name)
{
 const struct ref *ref = find_ref_by_name_abbrev(remote_refs, name);

 if (!ref)
  return ((void*)0);

 return copy_ref(ref);
}
