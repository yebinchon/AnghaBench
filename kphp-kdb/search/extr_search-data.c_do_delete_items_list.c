
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_itemid_entry {struct list_itemid_entry* next; int item_id; } ;


 scalar_t__ do_delete_item (int ) ;
 int flushing_binlog_check () ;
 int free_all_list_decoders () ;
 int vkprintf (int,char*,int) ;
 int zfree (struct list_itemid_entry*,int) ;

int do_delete_items_list (struct list_itemid_entry *head) {
  struct list_itemid_entry *p;
  int tot_deleted = 0;
  for (p = head; p != ((void*)0); p = head) {
    if (do_delete_item (p->item_id)) {
      tot_deleted++;
      flushing_binlog_check ();
    }
    head = p->next;
    zfree (p, sizeof (struct list_itemid_entry));
  }
  vkprintf (1, "%d items was deleted.\n", tot_deleted);
  free_all_list_decoders ();
  return tot_deleted;
}
