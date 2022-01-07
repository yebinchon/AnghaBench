
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_transaction_result ;

__attribute__((used)) static int do_result (int result) {
  cur_transaction_result = result;
  return 0;
}
