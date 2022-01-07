
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_entry {int dummy; } ;
struct ref_dir {struct ref_entry** entries; int cache; } ;


 int add_entry_to_dir (struct ref_dir*,struct ref_entry*) ;
 struct ref_entry* create_dir_entry (int ,char const*,size_t,int ) ;
 struct ref_dir* get_ref_dir (struct ref_entry*) ;
 int search_ref_dir (struct ref_dir*,char const*,size_t) ;

__attribute__((used)) static struct ref_dir *search_for_subdir(struct ref_dir *dir,
      const char *subdirname, size_t len,
      int mkdir)
{
 int entry_index = search_ref_dir(dir, subdirname, len);
 struct ref_entry *entry;
 if (entry_index == -1) {
  if (!mkdir)
   return ((void*)0);






  entry = create_dir_entry(dir->cache, subdirname, len, 0);
  add_entry_to_dir(dir, entry);
 } else {
  entry = dir->entries[entry_index];
 }
 return get_ref_dir(entry);
}
