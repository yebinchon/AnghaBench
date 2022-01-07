
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int signature_error(const char *msg)
{
 git_error_set(GIT_ERROR_INVALID, "failed to parse signature - %s", msg);
 return -1;
}
