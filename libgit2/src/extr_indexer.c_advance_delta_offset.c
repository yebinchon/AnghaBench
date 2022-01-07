
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ git_off_t ;
typedef int git_object_t ;
typedef int git_mwindow ;
struct TYPE_3__ {int entry_start; int off; int pack; } ;
typedef TYPE_1__ git_indexer ;


 int GIT_OBJECT_OFS_DELTA ;
 int GIT_OBJECT_REF_DELTA ;
 scalar_t__ GIT_OID_RAWSZ ;
 int assert (int) ;
 scalar_t__ get_delta_base (int ,int **,int *,int ,int ) ;
 int git_mwindow_close (int **) ;

__attribute__((used)) static int advance_delta_offset(git_indexer *idx, git_object_t type)
{
 git_mwindow *w = ((void*)0);

 assert(type == GIT_OBJECT_REF_DELTA || type == GIT_OBJECT_OFS_DELTA);

 if (type == GIT_OBJECT_REF_DELTA) {
  idx->off += GIT_OID_RAWSZ;
 } else {
  git_off_t base_off = get_delta_base(idx->pack, &w, &idx->off, type, idx->entry_start);
  git_mwindow_close(&w);
  if (base_off < 0)
   return (int)base_off;
 }

 return 0;
}
