
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_3__ {char** strings; scalar_t__ count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;


 int assert (int) ;
 int cb__reflist_add ;
 scalar_t__ git_reference_foreach_name (int *,int *,void*) ;
 scalar_t__ git_vector_detach (scalar_t__*,int *,int *) ;
 int git_vector_free (int *) ;
 scalar_t__ git_vector_init (int *,int,int *) ;

int git_reference_list(
 git_strarray *array,
 git_repository *repo)
{
 git_vector ref_list;

 assert(array && repo);

 array->strings = ((void*)0);
 array->count = 0;

 if (git_vector_init(&ref_list, 8, ((void*)0)) < 0)
  return -1;

 if (git_reference_foreach_name(
   repo, &cb__reflist_add, (void *)&ref_list) < 0) {
  git_vector_free(&ref_list);
  return -1;
 }

 array->strings = (char **)git_vector_detach(&array->count, ((void*)0), &ref_list);

 return 0;
}
