
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_cur_pos () ;
 int transaction_id ;
 int transaction_log_pos ;
 int vkprintf (int,char*,int ) ;

__attribute__((used)) static void do_transaction_begin () {
  transaction_log_pos = log_cur_pos ();
  transaction_id++;
  vkprintf (1, "Begin transaction Ox%X\n", transaction_id);
}
