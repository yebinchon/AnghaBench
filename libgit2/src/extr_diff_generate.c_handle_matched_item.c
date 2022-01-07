
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_diff_generated ;
struct TYPE_4__ {int new_iter; int nitem; int old_iter; int oitem; } ;
typedef TYPE_1__ diff_in_progress ;


 int iterator_advance (int *,int ) ;
 int maybe_modified (int *,TYPE_1__*) ;

__attribute__((used)) static int handle_matched_item(
 git_diff_generated *diff, diff_in_progress *info)
{
 int error = 0;

 if ((error = maybe_modified(diff, info)) < 0)
  return error;

 if (!(error = iterator_advance(&info->oitem, info->old_iter)))
  error = iterator_advance(&info->nitem, info->new_iter);

 return error;
}
