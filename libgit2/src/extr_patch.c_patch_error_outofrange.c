
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int patch_error_outofrange(const char *thing)
{
 git_error_set(GIT_ERROR_INVALID, "patch %s index out of range", thing);
 return GIT_ENOTFOUND;
}
