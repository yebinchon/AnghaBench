
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EEXISTS ;
 int index_entry_reuc_free (void*) ;

__attribute__((used)) static int index_reuc_on_dup(void **old, void *new)
{
 index_entry_reuc_free(*old);
 *old = new;
 return GIT_EEXISTS;
}
