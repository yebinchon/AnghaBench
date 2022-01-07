
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int pack_promisor; int pack_local; struct packed_git* next; } ;
typedef enum for_each_object_flags { ____Placeholder_for_each_object_flags } for_each_object_flags ;
typedef int each_packed_object_fn ;


 int FOR_EACH_OBJECT_LOCAL_ONLY ;
 int FOR_EACH_OBJECT_PROMISOR_ONLY ;
 int for_each_object_in_pack (struct packed_git*,int ,void*,int) ;
 struct packed_git* get_all_packs (int ) ;
 scalar_t__ open_pack_index (struct packed_git*) ;
 int prepare_packed_git (int ) ;
 int the_repository ;

int for_each_packed_object(each_packed_object_fn cb, void *data,
      enum for_each_object_flags flags)
{
 struct packed_git *p;
 int r = 0;
 int pack_errors = 0;

 prepare_packed_git(the_repository);
 for (p = get_all_packs(the_repository); p; p = p->next) {
  if ((flags & FOR_EACH_OBJECT_LOCAL_ONLY) && !p->pack_local)
   continue;
  if ((flags & FOR_EACH_OBJECT_PROMISOR_ONLY) &&
      !p->pack_promisor)
   continue;
  if (open_pack_index(p)) {
   pack_errors = 1;
   continue;
  }
  r = for_each_object_in_pack(p, cb, data, flags);
  if (r)
   break;
 }
 return r ? r : pack_errors;
}
