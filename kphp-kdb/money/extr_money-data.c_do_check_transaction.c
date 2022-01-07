
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transaction_t ;


 int check_transaction (int *) ;
 int * get_temp_transaction (int) ;

int do_check_transaction (int temp_id) {
  transaction_t *T = get_temp_transaction (temp_id);
  if (!T) {
    return 0;
  }
  int res = check_transaction (T);
  return res < 0 ? res : 3;
}
