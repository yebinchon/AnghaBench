
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_vector ;
typedef int git_iterator ;
struct TYPE_6__ {int strategy; } ;
typedef TYPE_1__ checkout_data ;


 int GIT_CHECKOUT_SKIP_UNMERGED ;
 int checkout_conflicts_coalesce_renames (TYPE_1__*) ;
 int checkout_conflicts_load (TYPE_1__*,int *,int *) ;
 int checkout_conflicts_mark_directoryfile (TYPE_1__*) ;

__attribute__((used)) static int checkout_get_update_conflicts(
 checkout_data *data,
 git_iterator *workdir,
 git_vector *pathspec)
{
 int error = 0;

 if (data->strategy & GIT_CHECKOUT_SKIP_UNMERGED)
  return 0;

 if ((error = checkout_conflicts_load(data, workdir, pathspec)) < 0 ||
  (error = checkout_conflicts_coalesce_renames(data)) < 0 ||
  (error = checkout_conflicts_mark_directoryfile(data)) < 0)
  goto done;

done:
 return error;
}
