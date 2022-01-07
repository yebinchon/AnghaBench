
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int received_answer_ack_ack ;
 int resent_answer_ack ;
 int resent_queries ;
 int secure_send_s0 ;
 int secure_send_s1 ;
 int sent_answer_ack ;
 int snprintf (char*,int,char*,int ,int ,int ,int ,int ,int ) ;

int secure_send_global_stat (char *buf, int len) {
  return snprintf (buf, len,
    "resent_queries\t%lld\n"
    "resent_answer_ack\t%lld\n"
    "secure_send_state0\t%lld\n"
    "secure_send_state1\t%lld\n"
    "received_answer_ack_ack\t%lld\n"
    "sent_answer_ack\t%lld\n",
    resent_queries,
    resent_answer_ack,
    secure_send_s0,
    secure_send_s1,
    received_answer_ack_ack,
    sent_answer_ack);
}
