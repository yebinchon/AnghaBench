
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serverworks_page_map {int dummy; } ;
struct TYPE_2__ {int num_tables; struct serverworks_page_map** gatt_pages; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct serverworks_page_map** kcalloc (int,int,int ) ;
 struct serverworks_page_map* kzalloc (int,int ) ;
 int serverworks_create_page_map (struct serverworks_page_map*) ;
 int serverworks_free_gatt_pages () ;
 TYPE_1__ serverworks_private ;

__attribute__((used)) static int serverworks_create_gatt_pages(int nr_tables)
{
 struct serverworks_page_map **tables;
 struct serverworks_page_map *entry;
 int retval = 0;
 int i;

 tables = kcalloc(nr_tables + 1, sizeof(struct serverworks_page_map *),
    GFP_KERNEL);
 if (tables == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < nr_tables; i++) {
  entry = kzalloc(sizeof(struct serverworks_page_map), GFP_KERNEL);
  if (entry == ((void*)0)) {
   retval = -ENOMEM;
   break;
  }
  tables[i] = entry;
  retval = serverworks_create_page_map(entry);
  if (retval != 0) break;
 }
 serverworks_private.num_tables = nr_tables;
 serverworks_private.gatt_pages = tables;

 if (retval != 0) serverworks_free_gatt_pages();

 return retval;
}
