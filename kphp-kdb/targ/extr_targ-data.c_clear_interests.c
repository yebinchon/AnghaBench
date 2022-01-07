
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_generic {int type; int a; } ;


 int * get_user (int ) ;
 int user_clear_interests (int *,int) ;

__attribute__((used)) static void clear_interests (struct lev_generic *E) {
  user_t *U = get_user (E->a);
  if (U) {
    user_clear_interests (U, E->type & 0xff);
  }
}
