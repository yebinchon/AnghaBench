
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INDEX ;
 int git_error_set_str (int ,char const*) ;

__attribute__((used)) static int create_index_error(int error, const char *msg)
{
 git_error_set_str(GIT_ERROR_INDEX, msg);
 return error;
}
