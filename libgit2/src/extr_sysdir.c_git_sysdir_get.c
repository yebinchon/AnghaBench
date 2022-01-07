
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t git_sysdir_t ;
typedef int git_buf ;
struct TYPE_2__ {int buf; } ;


 int GIT_ERROR_CHECK_ERROR (int ) ;
 int assert (int const**) ;
 TYPE_1__* git_sysdir__dirs ;
 int git_sysdir_check_selector (size_t) ;

int git_sysdir_get(const git_buf **out, git_sysdir_t which)
{
 assert(out);

 *out = ((void*)0);

 GIT_ERROR_CHECK_ERROR(git_sysdir_check_selector(which));

 *out = &git_sysdir__dirs[which].buf;
 return 0;
}
