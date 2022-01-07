
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_mailmap_entry ;


 int GIT_EEXISTS ;
 int mailmap_entry_free (int *) ;

__attribute__((used)) static int mailmap_entry_replace(void **old_raw, void *new_raw)
{
 mailmap_entry_free((git_mailmap_entry *)*old_raw);
 *old_raw = new_raw;
 return GIT_EEXISTS;
}
