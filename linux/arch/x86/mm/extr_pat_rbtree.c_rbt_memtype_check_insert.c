
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memtype {int type; int end; int subtree_max_end; int start; } ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int memtype_rb_check_conflict (int *,int ,int ,int,int*) ;
 int memtype_rb_insert (int *,struct memtype*) ;
 int memtype_rbroot ;

int rbt_memtype_check_insert(struct memtype *new,
        enum page_cache_mode *ret_type)
{
 int err = 0;

 err = memtype_rb_check_conflict(&memtype_rbroot, new->start, new->end,
      new->type, ret_type);

 if (!err) {
  if (ret_type)
   new->type = *ret_type;

  new->subtree_max_end = new->end;
  memtype_rb_insert(&memtype_rbroot, new);
 }
 return err;
}
