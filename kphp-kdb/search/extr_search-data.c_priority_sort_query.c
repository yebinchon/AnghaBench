
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int item_id; } ;
typedef TYPE_1__ item_t ;
struct TYPE_7__ {int cur_y; int tag_word; TYPE_1__* cur; } ;


 int FLAG_ENTRY_SORT_SEARCH ;
 TYPE_3__** H ;
 int HC ;
 scalar_t__ IHE ;
 int MAX_MISMATCHED_WORDS ;
 scalar_t__* QT ;
 int * QW ;
 int Q_min_priority ;
 int Q_order ;
 int Q_skip_mismatch_words_if_complete_case_found ;
 int Q_words ;
 int assert (TYPE_1__*) ;
 int ihe_advance (TYPE_3__*) ;
 scalar_t__ ihe_init (scalar_t__,int ,scalar_t__,int ) ;
 int iheap_insert (scalar_t__) ;
 int iheap_pop () ;
 int priority_sort_store_res (TYPE_1__*,int,int*) ;
 int vkprintf (int,char*,...) ;

__attribute__((used)) static void priority_sort_query (void) {
  vkprintf (3, "priority_sort_query\n");
  Q_skip_mismatch_words_if_complete_case_found = (Q_order & FLAG_ENTRY_SORT_SEARCH) ? 1 : 0;
  int found = 0;
  int i, j, t, p, tags = 0;
  item_t *I;
  HC = 0;
  for (i = 0; i < Q_words; i++) {
    tags += QT[i];
    if (ihe_init (IHE+i, QW[i], QT[i], 0)) {
      iheap_insert (IHE+i);
    } else {
      if (QT[i]) {

        return;
      }
    }
  }
  vkprintf (3, "HC = %d, tags = %d, Q_words = %d\n", HC, tags, Q_words);

  if (HC + MAX_MISMATCHED_WORDS < Q_words) {
    return;
  }

  I = ((void*)0);
  i = j = t = 0;
  int min_priority = Q_words - MAX_MISMATCHED_WORDS;
  if (min_priority < 1) {
    min_priority = 1;
  }

  if (min_priority <= tags && tags < Q_words) {
    min_priority = tags + 1;
  }
  vkprintf (3, "min_priority = %d\n", min_priority);

  while (HC) {
    vkprintf (3, "item_id = %lld\n", H[1]->cur->item_id);
    assert (H[1]->cur);
    if (H[1]->cur != I) {
      if (I != ((void*)0) && i >= min_priority && t == tags) {
        if (!Q_min_priority || i == j) {
          p = 6 - (Q_words - i);
          if (Q_words == i) {
            int dp = 3 - (i - j);
            if (dp < 0) { dp = 0; }
            p += dp;
          }
          priority_sort_store_res (I, p, &found);
        }
      }
      I = H[1]->cur;
      i = 1;
      j = H[1]->cur_y & 1;
      t = H[1]->tag_word;
    } else {
      i++;
      j += H[1]->cur_y & 1;
      t += H[1]->tag_word;
    }
    ihe_advance (H[1]);
    iheap_pop ();
  }
  if (I != ((void*)0) && i >= min_priority && t == tags) {
    if (!Q_min_priority || i == j) {
      p = 6 - (Q_words - i);
      if (Q_words == i) {
        int dp = 3 - (i - j);
        if (dp < 0) { dp = 0; }
        p += dp;
      }
      priority_sort_store_res (I, p, &found);
    }
  }
}
