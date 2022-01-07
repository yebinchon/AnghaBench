
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int checksum; } ;
typedef TYPE_1__ git_index ;


 int git_error_clear () ;
 scalar_t__ git_index_read (TYPE_1__*,int) ;
 int git_oid_cmp (int *,int const*) ;

int git_index__changed_relative_to(
 git_index *index, const git_oid *checksum)
{

 if (git_index_read(index, 0) < 0)
  git_error_clear();

 return !!git_oid_cmp(&index->checksum, checksum);
}
