
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct memtype {scalar_t__ start; scalar_t__ end; scalar_t__ subtree_max_end; int rb; } ;


 int EINVAL ;
 struct memtype* ERR_PTR (int ) ;
 int MEMTYPE_END_MATCH ;
 int MEMTYPE_EXACT_MATCH ;
 int memtype_rb_augment_cb ;
 int memtype_rb_insert (int *,struct memtype*) ;
 struct memtype* memtype_rb_match (int *,scalar_t__,scalar_t__,int ) ;
 int memtype_rbroot ;
 int rb_erase_augmented (int *,int *,int *) ;

struct memtype *rbt_memtype_erase(u64 start, u64 end)
{
 struct memtype *data;
 data = memtype_rb_match(&memtype_rbroot, start, end,
    MEMTYPE_EXACT_MATCH);
 if (!data) {
  data = memtype_rb_match(&memtype_rbroot, start, end,
     MEMTYPE_END_MATCH);
  if (!data)
   return ERR_PTR(-EINVAL);
 }

 if (data->start == start) {

  rb_erase_augmented(&data->rb, &memtype_rbroot,
     &memtype_rb_augment_cb);
 } else {

  rb_erase_augmented(&data->rb, &memtype_rbroot,
     &memtype_rb_augment_cb);
  data->end = start;
  data->subtree_max_end = data->end;
  memtype_rb_insert(&memtype_rbroot, data);
  return ((void*)0);
 }

 return data;
}
