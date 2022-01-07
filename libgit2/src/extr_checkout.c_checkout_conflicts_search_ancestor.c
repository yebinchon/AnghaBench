
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int update_conflicts; } ;
typedef TYPE_1__ checkout_data ;
typedef int checkout_conflictdata ;


 int checkout_conflicts_cmp_ancestor ;
 scalar_t__ git_vector_bsearch2 (size_t*,int *,int ,char const*) ;
 int * git_vector_get (int *,size_t) ;

__attribute__((used)) static checkout_conflictdata *checkout_conflicts_search_ancestor(
 checkout_data *data,
 const char *path)
{
 size_t pos;

 if (git_vector_bsearch2(&pos, &data->update_conflicts, checkout_conflicts_cmp_ancestor, path) < 0)
  return ((void*)0);

 return git_vector_get(&data->update_conflicts, pos);
}
