
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_user_generic {long type; long a; long b; int user_id; } ;


 int user_id ;
 struct lev_user_generic* write_alloc (int) ;

void log_2ints (long type, long arg1, long arg2) {
  struct lev_user_generic *L = write_alloc (16);
  L->type = type;
  L->user_id = user_id;
  L->a = arg1;
  L->b = arg2;
}
