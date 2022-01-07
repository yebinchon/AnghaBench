
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {int * repo; } ;
typedef TYPE_1__ git_filter_source ;



git_repository *git_filter_source_repo(const git_filter_source *src)
{
 return src->repo;
}
