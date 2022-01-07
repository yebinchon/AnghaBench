
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nl_close (int ) ;
 int nl_socket_free (int ) ;
 int sock ;
 int sock_event ;

void fast_classifier_close(void)
{
 nl_close(sock_event);
 nl_close(sock);
 nl_socket_free(sock_event);
 nl_socket_free(sock);
}
