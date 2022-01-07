
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_rename_entry {char* dir; int possible_new_dirs; int new_dir; scalar_t__ non_unique_new_dir; int ent; } ;


 int hashmap_entry_init (int *,int ) ;
 int strbuf_init (int *,int ) ;
 int strhash (char*) ;
 int string_list_init (int *,int ) ;

__attribute__((used)) static void dir_rename_entry_init(struct dir_rename_entry *entry,
      char *directory)
{
 hashmap_entry_init(&entry->ent, strhash(directory));
 entry->dir = directory;
 entry->non_unique_new_dir = 0;
 strbuf_init(&entry->new_dir, 0);
 string_list_init(&entry->possible_new_dirs, 0);
}
