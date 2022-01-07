
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__** contents; } ;
typedef TYPE_1__ git_vector ;
struct TYPE_5__ {int their_entry; int our_entry; int ancestor_entry; } ;
typedef TYPE_2__ git_merge_diff ;


 int GIT_MERGE_INDEX_ENTRY_EXISTS (int ) ;
 int GIT_UNUSED (void*) ;

__attribute__((used)) static int merge_diff_empty(const git_vector *conflicts, size_t idx, void *p)
{
 git_merge_diff *conflict = conflicts->contents[idx];

 GIT_UNUSED(p);

 return (!GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->ancestor_entry) &&
  !GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->our_entry) &&
  !GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->their_entry));
}
