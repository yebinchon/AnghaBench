
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t flags; } ;
typedef TYPE_1__ git_index_entry ;


 size_t GIT_INDEX_ENTRY_NAMEMASK ;

__attribute__((used)) static void index_entry_adjust_namemask(
  git_index_entry *entry,
  size_t path_length)
{
 entry->flags &= ~GIT_INDEX_ENTRY_NAMEMASK;

 if (path_length < GIT_INDEX_ENTRY_NAMEMASK)
  entry->flags |= path_length & GIT_INDEX_ENTRY_NAMEMASK;
 else
  entry->flags |= GIT_INDEX_ENTRY_NAMEMASK;
}
