
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct oidset {int dummy; } ;
struct object {int flags; int oid; int type; } ;
typedef enum list_objects_filter_situation { ____Placeholder_list_objects_filter_situation } list_objects_filter_situation ;
typedef enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;


 int BUG (char*,int) ;
 int LOFR_DO_SHOW ;
 int LOFR_MARK_SEEN ;
 int LOFR_ZERO ;



 int OBJ_BLOB ;
 int OBJ_TREE ;
 int SEEN ;
 int assert (int) ;
 int oidset_insert (struct oidset*,int *) ;

__attribute__((used)) static enum list_objects_filter_result filter_blobs_none(
 struct repository *r,
 enum list_objects_filter_situation filter_situation,
 struct object *obj,
 const char *pathname,
 const char *filename,
 struct oidset *omits,
 void *filter_data_)
{
 switch (filter_situation) {
 default:
  BUG("unknown filter_situation: %d", filter_situation);

 case 130:
  assert(obj->type == OBJ_TREE);

  return LOFR_MARK_SEEN | LOFR_DO_SHOW;

 case 128:
  assert(obj->type == OBJ_TREE);
  return LOFR_ZERO;

 case 129:
  assert(obj->type == OBJ_BLOB);
  assert((obj->flags & SEEN) == 0);

  if (omits)
   oidset_insert(omits, &obj->oid);
  return LOFR_MARK_SEEN;
 }
}
