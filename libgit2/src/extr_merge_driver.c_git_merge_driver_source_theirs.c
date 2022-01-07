
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* theirs; } ;
typedef TYPE_1__ git_merge_driver_source ;
typedef int git_index_entry ;


 int assert (TYPE_1__ const*) ;

const git_index_entry* git_merge_driver_source_theirs(const git_merge_driver_source *src)
{
 assert(src);
 return src->theirs;
}
