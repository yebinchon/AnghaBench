
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct split_index {scalar_t__ delete_bitmap; scalar_t__ replace_bitmap; int base_oid; } ;
struct cache_entry {int ce_mode; char* name; int oid; } ;
struct TYPE_3__ {int cache_nr; struct cache_entry** cache; struct split_index* split_index; int oid; } ;


 int ce_stage (struct cache_entry*) ;
 int do_read_index (TYPE_1__*,char const*,int) ;
 int ewah_each_bit (scalar_t__,int ,int *) ;
 char* oid_to_hex (int *) ;
 int printf (char*,...) ;
 int show_bit ;
 TYPE_1__ the_index ;

int cmd__dump_split_index(int ac, const char **av)
{
 struct split_index *si;
 int i;

 do_read_index(&the_index, av[1], 1);
 printf("own %s\n", oid_to_hex(&the_index.oid));
 si = the_index.split_index;
 if (!si) {
  printf("not a split index\n");
  return 0;
 }
 printf("base %s\n", oid_to_hex(&si->base_oid));
 for (i = 0; i < the_index.cache_nr; i++) {
  struct cache_entry *ce = the_index.cache[i];
  printf("%06o %s %d\t%s\n", ce->ce_mode,
         oid_to_hex(&ce->oid), ce_stage(ce), ce->name);
 }
 printf("replacements:");
 if (si->replace_bitmap)
  ewah_each_bit(si->replace_bitmap, show_bit, ((void*)0));
 printf("\ndeletions:");
 if (si->delete_bitmap)
  ewah_each_bit(si->delete_bitmap, show_bit, ((void*)0));
 printf("\n");
 return 0;
}
