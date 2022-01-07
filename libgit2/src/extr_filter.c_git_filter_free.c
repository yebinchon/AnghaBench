
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter ;


 int git__free (int *) ;

void git_filter_free(git_filter *filter)
{
 git__free(filter);
}
