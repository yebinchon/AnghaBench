
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*,int ,char const*) ;
 int git_reference_name (int const*) ;

__attribute__((used)) static int peel_error(int error, const git_reference *ref, const char* msg)
{
 git_error_set(
  GIT_ERROR_INVALID,
  "the reference '%s' cannot be peeled - %s", git_reference_name(ref), msg);
 return error;
}
