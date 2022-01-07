
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_setlist_long {int num; int L; } ;


 scalar_t__ LEV_FR_CAT_SETLIST ;
 struct lev_setlist_long* alloc_log_event (scalar_t__,int,int) ;
 int * get_user (int) ;
 int il_sort (int*,int) ;
 int memcpy (int ,int*,int) ;
 int set_category_friend_list (int *,int,int ,int) ;

int do_set_category_friend_list (int user_id, int cat, int *List, int len) {
  user_t *U = get_user (user_id);
  if (!U || cat <= 0 || cat > 30) {
    return -1;
  }
  int i = 0, j = 1;

  il_sort (List, len-1);
  while (i < len && List[i] <= 0) { i++; }
  List += i;
  len -= i;
  if (len > 0) {
    for (i = 1; i < len; i++) {
      if (List[i] > List[i-1]) {
        List[j++] = List[i];
      }
    }
    len = j;
  }

  struct lev_setlist_long *E = alloc_log_event (LEV_FR_CAT_SETLIST + cat, 12 + 4 * len, user_id);
  E->num = len;
  memcpy (E->L, List, len*4);

  return set_category_friend_list (U, cat, E->L, len);
}
