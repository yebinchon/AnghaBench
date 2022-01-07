
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cur; int value64; } ;
typedef TYPE_1__ gh_entry_t ;


 int Q_DOUBLE ;
 int Q_REVERSE ;
 int Q_SEARCH ;
 int Q_UNION ;
 int Q_order ;
 int assert (int) ;
 void* make_value64 (int,int) ;

__attribute__((used)) static inline void load_heap_v (gh_entry_t *H) {
  if (Q_order & Q_UNION) {
    int *data = H->cur;
    int x ;
    x = data[0];





    if (Q_order & Q_REVERSE) {

      H->value64 = x;


    } else {
      H->value64 = -x;

    }
  } else {
    assert (Q_order & Q_SEARCH);
    int *data = H->cur;
    int x, value;
    x = data[0];
    value = (Q_order & Q_DOUBLE) ? data[1] : x;

    if (Q_order & Q_REVERSE) {

      H->value64 = make_value64 (-(value+1),-(x+1));
    } else {
      H->value64 = make_value64 (value, x);
    }
  }
}
