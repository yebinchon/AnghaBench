
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_user_generic {long type; int user_id; } ;


 int user_id ;
 struct lev_user_generic* write_alloc (int) ;

void log_0ints (long type) {
  struct lev_user_generic *L = write_alloc (8);
  L->type = type;
  L->user_id = user_id;
}
