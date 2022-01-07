
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_vector ;
typedef int git_iterator ;
struct TYPE_5__ {int strategy; int index; } ;
typedef TYPE_1__ checkout_data ;


 int GIT_CHECKOUT_DONT_UPDATE_INDEX ;
 int checkout_conflict_append_remove ;
 int checkout_conflicts_foreach (TYPE_1__*,int ,int *,int *,int ,TYPE_1__*) ;

__attribute__((used)) static int checkout_get_remove_conflicts(
 checkout_data *data,
 git_iterator *workdir,
 git_vector *pathspec)
{
 if ((data->strategy & GIT_CHECKOUT_DONT_UPDATE_INDEX) != 0)
  return 0;

 return checkout_conflicts_foreach(data, data->index, workdir, pathspec, checkout_conflict_append_remove, data);
}
