
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int received_answer_ack ;
 int secure_answer_allocated ;
 int sent_answer_ack_ack ;
 int snprintf (char*,int,char*,int ,int ,int ) ;

int secure_receive_global_stat (char *buf, int len) {
  return snprintf (buf, len,
    "secure_answer_allocated\t%lld\n"
    "receive_answer_ack\t%lld\n"
    "sent_answer_ack_ack\t%lld\n"
    ,
    secure_answer_allocated,
    received_answer_ack,
    sent_answer_ack_ack
  );
}
