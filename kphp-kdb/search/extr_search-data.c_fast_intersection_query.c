
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cur_y; scalar_t__ cur; } ;
typedef TYPE_1__ iheap_en_t ;


 TYPE_1__* IHE ;
 int MAX_PRIORITY ;
 int * QT ;
 int * QW ;
 int Q_min_priority ;
 int Q_words ;
 int ihe_advance (TYPE_1__*) ;
 int ihe_init (TYPE_1__*,int ,int ,int ) ;
 int intersect_lists () ;
 int store_res (scalar_t__,int) ;

__attribute__((used)) static void fast_intersection_query (void) {
  int i;
  for (i = 0; i < Q_words; i++) {
    if (!ihe_init (IHE+i, QW[i], QT[i], 0)) {
      return;
    }
  }
  if (Q_min_priority) {
    Q_min_priority = Q_words;
    if (Q_min_priority > MAX_PRIORITY) {
      Q_min_priority = MAX_PRIORITY;
    }
  }

  if (Q_words == 1) {
    iheap_en_t *H = IHE;
    if (Q_min_priority) {
      while (H->cur) {
        if (H->cur_y & 1) {
          if (!store_res (H->cur, 1)) { break; }
        }
        ihe_advance (H);
      }
    } else {
      while (H->cur) {
        if (!store_res (H->cur, H->cur_y & 1)) { break; }
        ihe_advance (H);
      }
    }
  } else {
    intersect_lists ();
  }
}
