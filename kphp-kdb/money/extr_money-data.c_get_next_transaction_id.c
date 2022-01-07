
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_REALTIME ;
 int assert (int) ;
 int get_transaction (long long) ;
 long long get_utime (int ) ;
 long long last_transaction_id ;
 int lrand48 () ;

long long get_next_transaction_id (void) {
  long long x = (1LL << 32) * get_utime (CLOCK_REALTIME);
  if (x <= last_transaction_id) {
    x = last_transaction_id + (lrand48() % 239) + 1;
  }
  assert (!get_transaction (x));
  return (last_transaction_id = x);
}
