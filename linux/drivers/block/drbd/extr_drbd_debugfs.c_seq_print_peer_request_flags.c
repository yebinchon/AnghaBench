
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct drbd_peer_request {unsigned long flags; } ;


 unsigned long EE_APPLICATION ;
 unsigned long EE_CALL_AL_COMPLETE_IO ;
 unsigned long EE_MAY_SET_IN_SYNC ;
 unsigned long EE_SEND_WRITE_ACK ;
 unsigned long EE_SUBMITTED ;
 unsigned long EE_TRIM ;
 unsigned long EE_WRITE_SAME ;
 unsigned long EE_ZEROOUT ;
 int __seq_print_rq_state_bit (struct seq_file*,unsigned long,char*,char*,char*) ;
 int seq_print_rq_state_bit (struct seq_file*,unsigned long,char*,char*) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static void seq_print_peer_request_flags(struct seq_file *m, struct drbd_peer_request *peer_req)
{
 unsigned long f = peer_req->flags;
 char sep = ' ';

 __seq_print_rq_state_bit(m, f & EE_SUBMITTED, &sep, "submitted", "preparing");
 __seq_print_rq_state_bit(m, f & EE_APPLICATION, &sep, "application", "internal");
 seq_print_rq_state_bit(m, f & EE_CALL_AL_COMPLETE_IO, &sep, "in-AL");
 seq_print_rq_state_bit(m, f & EE_SEND_WRITE_ACK, &sep, "C");
 seq_print_rq_state_bit(m, f & EE_MAY_SET_IN_SYNC, &sep, "set-in-sync");
 seq_print_rq_state_bit(m, f & EE_TRIM, &sep, "trim");
 seq_print_rq_state_bit(m, f & EE_ZEROOUT, &sep, "zero-out");
 seq_print_rq_state_bit(m, f & EE_WRITE_SAME, &sep, "write-same");
 seq_putc(m, '\n');
}
