
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct delta_info {int delta_off; } ;
struct TYPE_3__ {int deltas; int entry_start; } ;
typedef TYPE_1__ git_indexer ;


 int GIT_ERROR_CHECK_ALLOC (struct delta_info*) ;
 struct delta_info* git__calloc (int,int) ;
 scalar_t__ git_vector_insert (int *,struct delta_info*) ;

__attribute__((used)) static int store_delta(git_indexer *idx)
{
 struct delta_info *delta;

 delta = git__calloc(1, sizeof(struct delta_info));
 GIT_ERROR_CHECK_ALLOC(delta);
 delta->delta_off = idx->entry_start;

 if (git_vector_insert(&idx->deltas, delta) < 0)
  return -1;

 return 0;
}
