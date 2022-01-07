
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int IPPROTO_UDP ;
 int O_NONBLOCK ;
 int SOCK_DGRAM ;
 int assert (int) ;
 int fcntl (int,int ,int) ;
 int socket (int,int ,int ) ;

__attribute__((used)) static int new_socket(int sin_family)
{
    int s = socket(sin_family, SOCK_DGRAM, IPPROTO_UDP);
    assert(s != -1);
    int flags = fcntl(s, F_GETFL, 0);
    assert(flags != -1);
    fcntl(s, F_SETFL, flags | O_NONBLOCK);
    return s;
}
