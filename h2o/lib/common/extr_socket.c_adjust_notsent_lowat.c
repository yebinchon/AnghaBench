
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int notsent_lowat ;
typedef int h2o_socket_t ;


 int IPPROTO_TCP ;
 int TCP_NOTSENT_LOWAT ;
 int h2o_socket_get_fd (int *) ;
 int setsockopt (int ,int ,int ,unsigned int*,int) ;

__attribute__((used)) static int adjust_notsent_lowat(h2o_socket_t *sock, unsigned notsent_lowat)
{
    return setsockopt(h2o_socket_get_fd(sock), IPPROTO_TCP, TCP_NOTSENT_LOWAT, &notsent_lowat, sizeof(notsent_lowat));
}
