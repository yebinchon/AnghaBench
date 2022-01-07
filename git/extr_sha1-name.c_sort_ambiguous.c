
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;


 int oid_object_info (struct repository*,void const*,int *) ;
 int oidcmp (void const*,void const*) ;

__attribute__((used)) static int sort_ambiguous(const void *a, const void *b, void *ctx)
{
 struct repository *sort_ambiguous_repo = ctx;
 int a_type = oid_object_info(sort_ambiguous_repo, a, ((void*)0));
 int b_type = oid_object_info(sort_ambiguous_repo, b, ((void*)0));
 int a_type_sort;
 int b_type_sort;





 if (a_type == b_type)
  return oidcmp(a, b);
 a_type_sort = a_type % 4;
 b_type_sort = b_type % 4;
 return a_type_sort > b_type_sort ? 1 : -1;
}
