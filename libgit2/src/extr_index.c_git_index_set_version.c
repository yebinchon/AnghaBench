
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int version; } ;
typedef TYPE_1__ git_index ;


 int GIT_ERROR_INDEX ;
 unsigned int INDEX_VERSION_NUMBER_LB ;
 unsigned int INDEX_VERSION_NUMBER_UB ;
 int assert (TYPE_1__*) ;
 int git_error_set (int ,char*) ;

int git_index_set_version(git_index *index, unsigned int version)
{
 assert(index);

 if (version < INDEX_VERSION_NUMBER_LB ||
     version > INDEX_VERSION_NUMBER_UB) {
  git_error_set(GIT_ERROR_INDEX, "invalid version number");
  return -1;
 }

 index->version = version;

 return 0;
}
