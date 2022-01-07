
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_STASH ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int create_error(int error, const char *msg)
{
 git_error_set(GIT_ERROR_STASH, "cannot stash changes - %s", msg);
 return error;
}
