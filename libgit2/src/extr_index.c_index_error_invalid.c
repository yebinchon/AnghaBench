
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INDEX ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int index_error_invalid(const char *message)
{
 git_error_set(GIT_ERROR_INDEX, "invalid data in index - %s", message);
 return -1;
}
