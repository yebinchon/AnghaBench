
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obj_order {int orig_order; int obj; int order; } ;
typedef int (* obj_path_fn_t ) (int ) ;


 int QSORT (struct obj_order*,int,int ) ;
 int compare_objs_order ;
 int match_order (int ) ;
 int prepare_order (char const*) ;

void order_objects(const char *orderfile, obj_path_fn_t obj_path,
     struct obj_order *objs, int nr)
{
 int i;

 if (!nr)
  return;

 prepare_order(orderfile);
 for (i = 0; i < nr; i++) {
  objs[i].orig_order = i;
  objs[i].order = match_order(obj_path(objs[i].obj));
 }
 QSORT(objs, nr, compare_objs_order);
}
