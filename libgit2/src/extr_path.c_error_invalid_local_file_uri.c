
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_CONFIG ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int error_invalid_local_file_uri(const char *uri)
{
 git_error_set(GIT_ERROR_CONFIG, "'%s' is not a valid local file URI", uri);
 return -1;
}
