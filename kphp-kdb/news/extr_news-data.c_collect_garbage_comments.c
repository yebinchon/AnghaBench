
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* hnext; } ;
typedef TYPE_1__ place_t ;


 int COMM_MODE ;
 int PLACES_HASH ;
 TYPE_1__** Place ;
 int assert (int ) ;
 int const comments_kept ;
 int garbage_objects_collected ;
 int garbage_uid ;
 int remove_old_comments (TYPE_1__*) ;

__attribute__((used)) static inline int collect_garbage_comments (int steps) {
  assert (COMM_MODE);
  const int old_comments_kept = comments_kept;
  int i = garbage_uid, max_uid = PLACES_HASH, seek_steps = steps * 10;
  do {
    place_t *M = Place[i];
    while (M) {
      remove_old_comments (M);
      steps--;
      M = M->hnext;
    }
    i++;
    if (i >= max_uid) {
      i -= max_uid;
    }
  } while (i != garbage_uid && steps > 0 && --seek_steps > 0);
  garbage_uid = i;
  garbage_objects_collected += old_comments_kept - comments_kept;
  return 1;
}
