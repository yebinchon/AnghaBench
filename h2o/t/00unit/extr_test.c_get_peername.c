
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int h2o_conn_t ;


 int AF_INET ;
 int htonl (int) ;
 int htons (int) ;

__attribute__((used)) static socklen_t get_peername(h2o_conn_t *conn, struct sockaddr *sa)
{
    struct sockaddr_in *sin = (void *)sa;
    sin->sin_family = AF_INET;
    sin->sin_addr.s_addr = htonl(0x7f000001);
    sin->sin_port = htons(55555);
    return sizeof(*sin);
}
