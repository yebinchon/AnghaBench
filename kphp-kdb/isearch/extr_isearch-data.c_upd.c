
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* data ;


 int MAXQ ;
 scalar_t__ rating_cmp (int,int) ;

void upd (data q, int id) {
  int last_id = q[MAXQ - 1];
  if (rating_cmp (id, last_id)) {
    int i, was_id = (last_id == id);
    for (i = MAXQ - 2; i >= 0 && rating_cmp (id, q[i]); i--) {
      if (was_id) {
        q[i + 1] = q[i];
      }
      was_id |= (q[i] == id);
    }

    if (!was_id) {
      for (was_id = MAXQ - 2; was_id > i; was_id--) {
        q[was_id + 1] = q[was_id];
      }
    }
    q[i + 1] = id;
  }
}
