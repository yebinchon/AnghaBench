
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_entry {int flag; int name; } ;
struct ref_dir {int nr; struct ref_entry** entries; } ;





 int REF_DIR ;
 struct ref_dir* get_ref_dir (struct ref_entry*) ;
 int overlaps_prefix (int ,char const*) ;

__attribute__((used)) static void prime_ref_dir(struct ref_dir *dir, const char *prefix)
{






 int i;
 for (i = 0; i < dir->nr; i++) {
  struct ref_entry *entry = dir->entries[i];
  if (!(entry->flag & REF_DIR)) {

  } else if (!prefix) {

   prime_ref_dir(get_ref_dir(entry), ((void*)0));
  } else {
   switch (overlaps_prefix(entry->name, prefix)) {
   case 130:





    prime_ref_dir(get_ref_dir(entry), ((void*)0));
    break;
   case 128:
    prime_ref_dir(get_ref_dir(entry), prefix);
    break;
   case 129:

    break;
   }
  }
 }
}
