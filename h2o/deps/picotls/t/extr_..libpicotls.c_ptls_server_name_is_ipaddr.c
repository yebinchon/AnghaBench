
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
typedef struct sockaddr_in6 sockaddr_in ;


 int AF_INET ;
 int AF_INET6 ;
 int inet_pton (int ,char const*,struct sockaddr_in6*) ;

int ptls_server_name_is_ipaddr(const char *name)
{
    return 0;
}
