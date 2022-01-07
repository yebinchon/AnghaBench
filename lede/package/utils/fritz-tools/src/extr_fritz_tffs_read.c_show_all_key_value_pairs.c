
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct tffs_key_name_table {int size; TYPE_1__* entries; } ;
struct tffs_entry {int dummy; } ;
struct TYPE_2__ {char* val; int * id; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ find_entry (int *,int ,struct tffs_entry*) ;
 int fprintf (int ,char*) ;
 int print_entry_value (struct tffs_entry*) ;
 int printf (char*,...) ;
 int stderr ;
 int to_entry_header_id (int ) ;

__attribute__((used)) static int show_all_key_value_pairs(uint8_t *buffer,
        struct tffs_key_name_table *key_names)
{
 int i, has_value = 0;
 uint16_t id;
 struct tffs_entry tmp;

 for (i = 0; i < key_names->size; i++) {
  id = to_entry_header_id(*key_names->entries[i].id);

  if (find_entry(buffer, id, &tmp)) {
   printf("%s=", key_names->entries[i].val);
   print_entry_value(&tmp);
   printf("\n");
   has_value++;
  }
 }

 if (!has_value) {
  fprintf(stderr, "ERROR: no values found!\n");
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}
