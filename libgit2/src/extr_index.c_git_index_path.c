
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* index_file_path; } ;
typedef TYPE_1__ git_index ;


 int assert (TYPE_1__ const*) ;

const char * git_index_path(const git_index *index)
{
 assert(index);
 return index->index_file_path;
}
