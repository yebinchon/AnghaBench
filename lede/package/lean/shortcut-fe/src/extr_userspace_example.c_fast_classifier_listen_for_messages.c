
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nl_recvmsgs_default (int ) ;
 int printf (char*) ;
 int sock_event ;

void fast_classifier_listen_for_messages(void)
{
 printf("waiting for netlink events\n");

 while (1) {
  nl_recvmsgs_default(sock_event);
 }
}
