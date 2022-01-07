
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_merge_file_options ;
struct TYPE_4__ {int const* file_opts; } ;
typedef TYPE_1__ git_merge_driver_source ;


 int assert (TYPE_1__ const*) ;

const git_merge_file_options* git_merge_driver_source_file_options(const git_merge_driver_source *src)
{
 assert(src);
 return src->file_opts;
}
