
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 scalar_t__ GIT_REFERENCE_DIRECT ;
 int git_error_clear () ;
 int git_reference_free (int *) ;
 int git_reference_target (int *) ;
 scalar_t__ git_reference_type (int *) ;
 int git_revwalk_hide (int *,int ) ;

__attribute__((used)) static int foreach_reference_cb(git_reference *reference, void *payload)
{
 git_revwalk *walk = (git_revwalk *)payload;
 int error;

 if (git_reference_type(reference) != GIT_REFERENCE_DIRECT) {
  git_reference_free(reference);
  return 0;
 }

 error = git_revwalk_hide(walk, git_reference_target(reference));


 if (error == GIT_ENOTFOUND || error == GIT_ERROR_INVALID) {
  git_error_clear();
  error = 0;
 }

 git_reference_free(reference);

 return error;
}
