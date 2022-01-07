
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int n; TYPE_1__* by_hash; } ;
typedef TYPE_2__ watchcat_entry_t ;
struct TYPE_10__ {int query; struct TYPE_10__* next; } ;
typedef TYPE_3__ watchcat ;
struct TYPE_8__ {scalar_t__ word; } ;


 int add_to_ans (TYPE_3__*) ;
 int assert (int) ;
 scalar_t__ check_watchcat_query (TYPE_2__*,int ) ;
 TYPE_3__* get_watchcat_q (scalar_t__,int ) ;

void process_entry (watchcat_entry_t *entry) {
  int i;
  for (i = 0; i < entry->n; i++) {
    if (i == 0 || entry->by_hash[i].word != entry->by_hash[i - 1].word) {
      watchcat *st = get_watchcat_q (entry->by_hash[i].word, 0), *q;
      if (st != ((void*)0)) {
        q = st;
        assert (q->next != st);
        while (q->next != st) {
          q = q->next;

          if (check_watchcat_query (entry, q->query)) {
            add_to_ans (q);
          }
        }
      }
    }
  }
}
