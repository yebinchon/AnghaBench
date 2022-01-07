
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 size_t SIZE_MAX ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,char*,int ,int *,int ,int ) ;
 int htonl (int ) ;
 size_t sprintf (char*,char*,int,int,int,int) ;
 size_t strlen (char*) ;

size_t h2o_socket_getnumerichost(struct sockaddr *sa, socklen_t salen, char *buf)
{
    if (sa->sa_family == AF_INET) {

        struct sockaddr_in *sin = (void *)sa;
        uint32_t addr;
        addr = htonl(sin->sin_addr.s_addr);
        return sprintf(buf, "%d.%d.%d.%d", addr >> 24, (addr >> 16) & 255, (addr >> 8) & 255, addr & 255);
    }

    if (getnameinfo(sa, salen, buf, NI_MAXHOST, ((void*)0), 0, NI_NUMERICHOST) != 0)
        return SIZE_MAX;
    return strlen(buf);
}
