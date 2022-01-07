
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags_extended; int flags; int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_INDEX_ENTRY_EXTENDED_FLAGS ;
 int git_oid_cpy (int *,int *) ;

__attribute__((used)) static void index_entry_cpy_nocache(
 git_index_entry *tgt,
 const git_index_entry *src)
{
 git_oid_cpy(&tgt->id, &src->id);
 tgt->mode = src->mode;
 tgt->flags = src->flags;
 tgt->flags_extended = (src->flags_extended & GIT_INDEX_ENTRY_EXTENDED_FLAGS);
}
