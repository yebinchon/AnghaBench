
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_TAG ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int tag_error(const char *str)
{
 git_error_set(GIT_ERROR_TAG, "failed to parse tag: %s", str);
 return -1;
}
