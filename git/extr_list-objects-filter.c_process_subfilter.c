
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subfilter {int is_skipping_tree; int skip_tree; int seen; int filter; } ;
struct repository {int dummy; } ;
struct object {int oid; } ;
typedef enum list_objects_filter_situation { ____Placeholder_list_objects_filter_situation } list_objects_filter_situation ;
typedef enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;


 int LOFR_MARK_SEEN ;
 int LOFR_SKIP_TREE ;
 int LOFR_ZERO ;
 int LOFS_END_TREE ;
 int list_objects_filter__filter_object (struct repository*,int,struct object*,char const*,char const*,int ) ;
 scalar_t__ oideq (int *,int *) ;
 scalar_t__ oidset_contains (int *,int *) ;
 int oidset_insert (int *,int *) ;

__attribute__((used)) static enum list_objects_filter_result process_subfilter(
 struct repository *r,
 enum list_objects_filter_situation filter_situation,
 struct object *obj,
 const char *pathname,
 const char *filename,
 struct subfilter *sub)
{
 enum list_objects_filter_result result;
 if (sub->is_skipping_tree) {
  if (filter_situation == LOFS_END_TREE &&
      oideq(&obj->oid, &sub->skip_tree))
   sub->is_skipping_tree = 0;
  else
   return LOFR_ZERO;
 }
 if (oidset_contains(&sub->seen, &obj->oid))
  return LOFR_ZERO;

 result = list_objects_filter__filter_object(
  r, filter_situation, obj, pathname, filename, sub->filter);

 if (result & LOFR_MARK_SEEN)
  oidset_insert(&sub->seen, &obj->oid);

 if (result & LOFR_SKIP_TREE) {
  sub->is_skipping_tree = 1;
  sub->skip_tree = obj->oid;
 }

 return result;
}
