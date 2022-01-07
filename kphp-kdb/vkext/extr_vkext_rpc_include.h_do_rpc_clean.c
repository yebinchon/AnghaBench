
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int buffer_clear (scalar_t__) ;
 scalar_t__ buffer_create (int ) ;
 int buffer_write_reserve (scalar_t__,int) ;
 scalar_t__ outbuf ;
 int store ;

__attribute__((used)) static void do_rpc_clean (void) {
  ADD_CNT (store);
  START_TIMER (store);
  if (outbuf) {
    buffer_clear (outbuf);
  } else {
    outbuf = buffer_create (0);
  }
  buffer_write_reserve (outbuf, 40);
  END_TIMER (store);
}
