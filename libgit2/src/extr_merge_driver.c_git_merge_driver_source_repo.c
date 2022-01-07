
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int const* repo; } ;
typedef TYPE_1__ git_merge_driver_source ;


 int assert (TYPE_1__ const*) ;

const git_repository* git_merge_driver_source_repo(const git_merge_driver_source *src)
{
 assert(src);
 return src->repo;
}
