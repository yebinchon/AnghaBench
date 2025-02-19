
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct list_itemid_entry {struct list_itemid_entry* next; int item_id; } ;
struct hashset_int {int dummy; } ;
struct TYPE_6__ {TYPE_4__* cur; } ;
typedef TYPE_1__ iheap_en_t ;
struct TYPE_7__ {int item_id; } ;


 TYPE_1__* IHE ;
 scalar_t__ Q_order ;
 int clear_res () ;
 int do_delete_items_list (struct list_itemid_entry*) ;
 int get_rate_item (TYPE_4__*,int) ;
 scalar_t__ hashset_int_get (struct hashset_int*,int) ;
 int ihe_advance (TYPE_1__*) ;
 int ihe_init (TYPE_1__*,int ,int,int ) ;
 int universal_tag_hash ;
 struct list_itemid_entry* zmalloc (int) ;

int do_delete_items_with_rate_using_hashset (struct hashset_int *HS, int rate_id) {
  struct list_itemid_entry *head = ((void*)0), *tail = ((void*)0), *p;
  Q_order = 0;
  clear_res ();

  if (!ihe_init (IHE, universal_tag_hash, 1, 0)) {
    return 0;
  }

  iheap_en_t *H = IHE;
  while (H->cur) {
    int rate = get_rate_item (H->cur, rate_id);
    if (rate && hashset_int_get (HS, rate)) {
      p = zmalloc (sizeof (struct list_itemid_entry));
      p->item_id = H->cur->item_id;
      p->next = ((void*)0);
      if (head) {
        tail->next = p;
        tail = p;
      } else {
        head = tail = p;
      }
    }
    ihe_advance (H);
  }
  return do_delete_items_list (head);
}
