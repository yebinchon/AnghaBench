
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;


 int update_history (int *,int,int,int) ;
 int update_history_persistent (int *,int,int,int) ;

__attribute__((used)) static void update_history_both (user_t *U, int local_id, int flags, int op) {
  if ((unsigned) op <= 5) {
    update_history_persistent (U, local_id, flags, op);
  }
  update_history (U, local_id, flags, op);
}
