
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_vector ;
typedef int git_iterator ;
struct TYPE_10__ {int names; int reuc; } ;
typedef TYPE_2__ git_index ;
struct TYPE_9__ {int _cmp; } ;
struct TYPE_11__ {int * update_names; int * update_reuc; TYPE_1__ update_conflicts; int target; } ;
typedef TYPE_3__ checkout_data ;


 int checkout_conflict_append_update ;
 int checkout_conflictdata_cmp ;
 scalar_t__ checkout_conflicts_foreach (TYPE_3__*,TYPE_2__*,int *,int *,int ,TYPE_3__*) ;
 TYPE_2__* git_iterator_index (int ) ;

__attribute__((used)) static int checkout_conflicts_load(checkout_data *data, git_iterator *workdir, git_vector *pathspec)
{
 git_index *index;


 if ((index = git_iterator_index(data->target)) == ((void*)0))
  return 0;

 data->update_conflicts._cmp = checkout_conflictdata_cmp;

 if (checkout_conflicts_foreach(data, index, workdir, pathspec, checkout_conflict_append_update, data) < 0)
  return -1;


 data->update_reuc = &index->reuc;
 data->update_names = &index->names;

 return 0;
}
