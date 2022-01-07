
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {scalar_t__ confirm_tree; int flags; } ;


 int assert (int ) ;
 int out_buf_clean () ;
 int out_buf_flush (int) ;
 int out_buf_set_mode (int ) ;
 int out_buf_set_target (struct udp_target*) ;

void udp_confirms_send (struct udp_target *S) {
  out_buf_set_mode (S->flags);
  out_buf_set_target (S);
  assert (out_buf_clean ());
  while (S->confirm_tree) {
    out_buf_flush (1);
    assert (out_buf_clean ());
  }
}
