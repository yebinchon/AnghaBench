
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fr_cnt; int fr_tree; } ;
typedef TYPE_1__ user_t ;
struct TYPE_5__ {int date; int cat; int x; } ;


 TYPE_3__** H ;
 int HN ;
 int * R ;
 int * R_end ;
 int R_max ;
 int aux_heap_sort () ;
 TYPE_1__* get_user (int) ;
 int tree_fetch_recent (int ) ;

int prepare_recent_friends (int user_id, int num) {
  user_t *U = get_user (user_id);
  if (!U || num <= 0 || num > 1000) {
    return -1;
  }
  R_max = num;
  HN = 0;

  tree_fetch_recent (U->fr_tree);
  aux_heap_sort ();

  R_end = R;
  int i;
  for (i = 0; i < HN; i++) {
    R_end[0] = H[i]->x;
    R_end[1] = H[i]->cat;
    R_end[2] = H[i]->date;
    R_end += 3;
  }

  return U->fr_cnt;
}
