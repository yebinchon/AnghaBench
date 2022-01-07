
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_error_set_str (int,char const*) ;

void giterr_set_str(int error_class, const char *string)
{
 git_error_set_str(error_class, string);
}
