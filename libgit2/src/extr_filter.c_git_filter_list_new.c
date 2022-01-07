
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_repository ;
struct TYPE_3__ {int flags; int mode; int * path; int * repo; int member_0; } ;
typedef TYPE_1__ git_filter_source ;
typedef int git_filter_mode_t ;
typedef int git_filter_list ;


 int filter_list_new (int **,TYPE_1__*) ;

int git_filter_list_new(
 git_filter_list **out,
 git_repository *repo,
 git_filter_mode_t mode,
 uint32_t flags)
{
 git_filter_source src = { 0 };
 src.repo = repo;
 src.path = ((void*)0);
 src.mode = mode;
 src.flags = flags;
 return filter_list_new(out, &src);
}
