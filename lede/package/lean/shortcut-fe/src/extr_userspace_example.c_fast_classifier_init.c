
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAST_CLASSIFIER_GENL_MCGRP ;
 int FAST_CLASSIFIER_GENL_NAME ;
 int NL_CB_CUSTOM ;
 int NL_CB_VALID ;
 scalar_t__ family ;
 int genl_connect (int ) ;
 scalar_t__ genl_ctrl_resolve (int ,int ) ;
 scalar_t__ genl_ctrl_resolve_grp (int ,int ,int ) ;
 scalar_t__ grp_id ;
 int nl_close (int ) ;
 int nl_socket_add_membership (int ,scalar_t__) ;
 int nl_socket_alloc () ;
 int nl_socket_disable_seq_check (int ) ;
 int nl_socket_free (int ) ;
 int nl_socket_modify_cb (int ,int ,int ,int ,int *) ;
 int parse_cb ;
 int printf (char*) ;
 int sock ;
 int sock_event ;

int fast_classifier_init(void)
{
 int err;

 sock = nl_socket_alloc();
 if (!sock) {
  printf("Unable to allocation socket.\n");
  return -1;
 }
 genl_connect(sock);

 sock_event = nl_socket_alloc();
 if (!sock_event) {
  nl_close(sock);
  nl_socket_free(sock);
  printf("Unable to allocation socket.\n");
  return -1;
 }
 genl_connect(sock_event);

 family = genl_ctrl_resolve(sock, FAST_CLASSIFIER_GENL_NAME);
 if (family < 0) {
  nl_close(sock_event);
  nl_close(sock);
  nl_socket_free(sock);
  nl_socket_free(sock_event);
  printf("Unable to resolve family\n");
  return -1;
 }

 grp_id = genl_ctrl_resolve_grp(sock, FAST_CLASSIFIER_GENL_NAME,
           FAST_CLASSIFIER_GENL_MCGRP);
 if (grp_id < 0) {
  printf("Unable to resolve mcast group\n");
  return -1;
 }

 err = nl_socket_add_membership(sock_event, grp_id);
 if (err < 0) {
  printf("Unable to add membership\n");
  return -1;
 }

 nl_socket_disable_seq_check(sock_event);
 nl_socket_modify_cb(sock_event, NL_CB_VALID, NL_CB_CUSTOM, parse_cb, ((void*)0));

 return 0;
}
