
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout_name_entry {int * theirs; int * ours; int * ancestor; } ;


 int cl_git_pass (int ) ;
 int g_index ;
 int git_index_name_add (int ,int *,int *,int *) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static void create_index_names(struct checkout_name_entry *entries, size_t entries_len)
{
 size_t i;

 for (i = 0; i < entries_len; i++) {
  cl_git_pass(git_index_name_add(g_index,
   strlen(entries[i].ancestor) == 0 ? ((void*)0) : entries[i].ancestor,
   strlen(entries[i].ours) == 0 ? ((void*)0) : entries[i].ours,
   strlen(entries[i].theirs) == 0 ? ((void*)0) : entries[i].theirs));
 }
}
