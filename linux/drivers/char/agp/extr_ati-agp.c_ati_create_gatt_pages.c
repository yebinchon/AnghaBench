
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ati_page_map {int dummy; } ;
struct TYPE_2__ {int num_tables; struct ati_page_map** gatt_pages; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ati_create_page_map (struct ati_page_map*) ;
 int ati_free_gatt_pages () ;
 TYPE_1__ ati_generic_private ;
 struct ati_page_map** kcalloc (int,int,int ) ;
 struct ati_page_map* kzalloc (int,int ) ;

__attribute__((used)) static int ati_create_gatt_pages(int nr_tables)
{
 struct ati_page_map **tables;
 struct ati_page_map *entry;
 int retval = 0;
 int i;

 tables = kcalloc(nr_tables + 1, sizeof(struct ati_page_map *),
    GFP_KERNEL);
 if (tables == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < nr_tables; i++) {
  entry = kzalloc(sizeof(struct ati_page_map), GFP_KERNEL);
  tables[i] = entry;
  if (entry == ((void*)0)) {
   retval = -ENOMEM;
   break;
  }
  retval = ati_create_page_map(entry);
  if (retval != 0)
   break;
 }
 ati_generic_private.num_tables = i;
 ati_generic_private.gatt_pages = tables;

 if (retval != 0)
  ati_free_gatt_pages();

 return retval;
}
