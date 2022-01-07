
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static void *set_error(void *dummy)
{
 git_error_set(GIT_ERROR_INVALID, "oh no, something happened!\n");

 return dummy;
}
