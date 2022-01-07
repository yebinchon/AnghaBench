
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* first; } ;
typedef TYPE_1__ place_t ;
struct TYPE_5__ {int item; int date; struct TYPE_5__* next; } ;
typedef TYPE_2__ comment_t ;


 int COMM_MODE ;
 int check_obj (int,int,int) ;
 TYPE_1__* get_place_f (int,int,int,int ) ;
 scalar_t__ min_logevent_time ;
 scalar_t__ now ;
 int valid_type (int) ;

__attribute__((used)) static int show_hide_comment (int type, int owner, int place, int item, int shown) {
  if (now < min_logevent_time) {
    return 0;
  }
  if (!check_obj (type, owner, place) || !COMM_MODE || !valid_type (type)) {
    return -1;
  }

  place_t *V = get_place_f (type, owner, place, 0);
  if (!V) {
    return 0;
  }

  comment_t *p;
  int res = 0;
  for (p = V->first; p != (comment_t *) V; p = p->next) {
    if (p->item == item && (p->date ^ shown) >= 0) {
      res++;
      p->date ^= (-1 << 31);
    }
  }

  return res;
}
