
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_entry {int flag; } ;
struct ref_dir {struct ref_entry** entries; } ;


 int REF_DIR ;
 struct ref_dir* find_containing_dir (struct ref_dir*,char const*,int ) ;
 int search_ref_dir (struct ref_dir*,char const*,int ) ;
 int strlen (char const*) ;

struct ref_entry *find_ref_entry(struct ref_dir *dir, const char *refname)
{
 int entry_index;
 struct ref_entry *entry;
 dir = find_containing_dir(dir, refname, 0);
 if (!dir)
  return ((void*)0);
 entry_index = search_ref_dir(dir, refname, strlen(refname));
 if (entry_index == -1)
  return ((void*)0);
 entry = dir->entries[entry_index];
 return (entry->flag & REF_DIR) ? ((void*)0) : entry;
}
