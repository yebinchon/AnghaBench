
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object {int flags; } ;
struct filter {int (* filter_object_fn ) (struct repository*,int,struct object*,char const*,char const*,int ,int ) ;int filter_data; int omits; } ;
typedef enum list_objects_filter_situation { ____Placeholder_list_objects_filter_situation } list_objects_filter_situation ;
typedef enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;


 int LOFR_DO_SHOW ;
 int LOFR_MARK_SEEN ;
 int LOFS_END_TREE ;
 int NOT_USER_GIVEN ;
 int stub1 (struct repository*,int,struct object*,char const*,char const*,int ,int ) ;

enum list_objects_filter_result list_objects_filter__filter_object(
 struct repository *r,
 enum list_objects_filter_situation filter_situation,
 struct object *obj,
 const char *pathname,
 const char *filename,
 struct filter *filter)
{
 if (filter && (obj->flags & NOT_USER_GIVEN))
  return filter->filter_object_fn(r, filter_situation, obj,
      pathname, filename,
      filter->omits,
      filter->filter_data);





 if (filter_situation == LOFS_END_TREE)
  return 0;
 return LOFR_MARK_SEEN | LOFR_DO_SHOW;
}
