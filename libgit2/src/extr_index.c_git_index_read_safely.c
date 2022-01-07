
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dirty; } ;
typedef TYPE_1__ git_index ;


 int GIT_EINDEXDIRTY ;
 int GIT_ERROR_INDEX ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_index__enforce_unsaved_safety ;
 int git_index_read (TYPE_1__*,int) ;

int git_index_read_safely(git_index *index)
{
 if (git_index__enforce_unsaved_safety && index->dirty) {
  git_error_set(GIT_ERROR_INDEX,
   "the index has unsaved changes that would be overwritten by this operation");
  return GIT_EINDEXDIRTY;
 }

 return git_index_read(index, 0);
}
