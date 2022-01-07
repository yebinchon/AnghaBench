
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int refname; } ;
typedef enum iterator_selection { ____Placeholder_iterator_selection } iterator_selection ;


 int ITER_DONE ;
 int ITER_SELECT_0 ;
 int ITER_SELECT_1 ;
 int ITER_SKIP_1 ;
 scalar_t__ REF_TYPE_NORMAL ;
 scalar_t__ ref_type (int ) ;

__attribute__((used)) static enum iterator_selection reflog_iterator_select(
 struct ref_iterator *iter_worktree,
 struct ref_iterator *iter_common,
 void *cb_data)
{
 if (iter_worktree) {





  return ITER_SELECT_0;
 } else if (iter_common) {
  if (ref_type(iter_common->refname) == REF_TYPE_NORMAL)
   return ITER_SELECT_1;





  return ITER_SKIP_1;
 } else
  return ITER_DONE;
}
