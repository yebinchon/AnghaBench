
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transaction_t ;


 int * get_transaction_f (int,int ) ;
 int transaction_wait (int *) ;

__attribute__((used)) static int do_wait (int transaction_id) {
  transaction_t *T = get_transaction_f (transaction_id, 0);
  if (T == ((void*)0)) {
    return 0;
  }
  return transaction_wait (T);
}
