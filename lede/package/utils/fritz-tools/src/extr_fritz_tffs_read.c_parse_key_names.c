
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct tffs_name_table_entry {size_t* id; char const* val; } ;
struct tffs_key_name_table {size_t size; struct tffs_name_table_entry* entries; } ;
struct tffs_entry {int * val; int header; } ;


 struct tffs_name_table_entry* calloc (int,int) ;
 size_t get_header_len (int ) ;
 scalar_t__ get_walk_size (scalar_t__) ;
 struct tffs_name_table_entry* realloc (struct tffs_name_table_entry*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void parse_key_names(struct tffs_entry *names_entry,
       struct tffs_key_name_table *key_names)
{
 uint32_t pos = 0, i = 0;
 struct tffs_name_table_entry *name_item;

 key_names->entries = calloc(sizeof(*name_item), 1);

 do {
  name_item = &key_names->entries[i];

  name_item->id = (uint32_t *) &names_entry->val[pos];
  pos += sizeof(*name_item->id);
  name_item->val = (const char *) &names_entry->val[pos];





  pos += get_walk_size(strlen(name_item->val) + 1);

  ++i;
  key_names->entries = realloc(key_names->entries,
      sizeof(*name_item) * (i + 1));
 } while (pos < get_header_len(names_entry->header));

 key_names->size = i;
}
