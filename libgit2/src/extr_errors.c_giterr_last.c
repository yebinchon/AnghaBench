
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_error ;


 int const* git_error_last () ;

const git_error *giterr_last(void)
{
 return git_error_last();
}
