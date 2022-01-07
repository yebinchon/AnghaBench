
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_delta ;


 char const* diff_delta__path (int const*) ;

const char *git_diff_delta__path(const git_diff_delta *delta)
{
 return diff_delta__path(delta);
}
