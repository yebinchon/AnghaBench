
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int s_cb; } ;


 int NL_CB_CUSTOM ;
 int NL_CB_SEQ_CHECK ;
 int nl_cb_set (int ,int ,int ,int ,int *) ;
 int noop_seq_check ;

void nl_socket_disable_seq_check(struct nl_sock *sk)
{
 nl_cb_set(sk->s_cb, NL_CB_SEQ_CHECK,
    NL_CB_CUSTOM, noop_seq_check, ((void*)0));
}
