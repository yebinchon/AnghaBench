
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_online_lite {int user_id; } ;


 int account_user_online (int *) ;
 int * get_user (int ) ;

void process_user_online_lite (struct lev_online_lite *E) {
  user_t *U = get_user (E->user_id);
  if (U) {
    account_user_online (U);
  }
}
