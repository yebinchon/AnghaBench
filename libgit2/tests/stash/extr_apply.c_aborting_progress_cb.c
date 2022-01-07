
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_stash_apply_progress_t ;


 scalar_t__ GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED ;
 int GIT_UNUSED (void*) ;

int aborting_progress_cb(
 git_stash_apply_progress_t progress,
 void *payload)
{
 GIT_UNUSED(payload);

 if (progress == GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED)
  return -44;

 return 0;
}
