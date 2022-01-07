
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int index; } ;
struct oidset {int dummy; } ;
struct object {int flags; int oid; int type; } ;
struct frame {int default_match; int child_prov_omit; } ;
struct filter_sparse_data {size_t nr; int pl; struct frame* array_frame; int alloc; } ;
typedef enum pattern_match_result { ____Placeholder_pattern_match_result } pattern_match_result ;
typedef enum list_objects_filter_situation { ____Placeholder_list_objects_filter_situation } list_objects_filter_situation ;
typedef enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;


 int ALLOC_GROW (struct frame*,int ,int ) ;
 int BUG (char*,int) ;
 int DT_DIR ;
 int DT_REG ;
 int FILTER_SHOWN_BUT_REVISIT ;
 int LOFR_DO_SHOW ;
 int LOFR_MARK_SEEN ;
 int LOFR_ZERO ;



 int MATCHED ;
 int OBJ_BLOB ;
 int OBJ_TREE ;
 int SEEN ;
 int UNDECIDED ;
 int assert (int) ;
 int oidset_insert (struct oidset*,int *) ;
 int oidset_remove (struct oidset*,int *) ;
 int path_matches_pattern_list (char const*,int ,char const*,int*,int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static enum list_objects_filter_result filter_sparse(
 struct repository *r,
 enum list_objects_filter_situation filter_situation,
 struct object *obj,
 const char *pathname,
 const char *filename,
 struct oidset *omits,
 void *filter_data_)
{
 struct filter_sparse_data *filter_data = filter_data_;
 int dtype;
 struct frame *frame;
 enum pattern_match_result match;

 switch (filter_situation) {
 default:
  BUG("unknown filter_situation: %d", filter_situation);

 case 130:
  assert(obj->type == OBJ_TREE);
  dtype = DT_DIR;
  match = path_matches_pattern_list(pathname, strlen(pathname),
        filename, &dtype, &filter_data->pl,
        r->index);
  if (match == UNDECIDED)
   match = filter_data->array_frame[filter_data->nr - 1].default_match;

  ALLOC_GROW(filter_data->array_frame, filter_data->nr + 1,
      filter_data->alloc);
  filter_data->array_frame[filter_data->nr].default_match = match;
  filter_data->array_frame[filter_data->nr].child_prov_omit = 0;
  filter_data->nr++;
  if (obj->flags & FILTER_SHOWN_BUT_REVISIT)
   return LOFR_ZERO;
  obj->flags |= FILTER_SHOWN_BUT_REVISIT;
  return LOFR_DO_SHOW;

 case 128:
  assert(obj->type == OBJ_TREE);
  assert(filter_data->nr > 1);

  frame = &filter_data->array_frame[--filter_data->nr];





  filter_data->array_frame[filter_data->nr - 1].child_prov_omit |=
   frame->child_prov_omit;






  if (!frame->child_prov_omit)
   return LOFR_MARK_SEEN;
  return LOFR_ZERO;

 case 129:
  assert(obj->type == OBJ_BLOB);
  assert((obj->flags & SEEN) == 0);

  frame = &filter_data->array_frame[filter_data->nr - 1];

  dtype = DT_REG;
  match = path_matches_pattern_list(pathname, strlen(pathname),
         filename, &dtype, &filter_data->pl,
         r->index);
  if (match == UNDECIDED)
   match = frame->default_match;
  if (match == MATCHED) {
   if (omits)
    oidset_remove(omits, &obj->oid);
   return LOFR_MARK_SEEN | LOFR_DO_SHOW;
  }
  if (omits)
   oidset_insert(omits, &obj->oid);






  frame->child_prov_omit = 1;
  return LOFR_ZERO;
 }
}
