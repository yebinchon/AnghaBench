
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_CLOEXEC ;
 int cloexec_mutex ;
 int close (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ set_cloexec (int) ;
 int socket (int,int,int) ;

int cloexec_socket(int domain, int type, int protocol)
{

    return socket(domain, type | SOCK_CLOEXEC, protocol);
}
