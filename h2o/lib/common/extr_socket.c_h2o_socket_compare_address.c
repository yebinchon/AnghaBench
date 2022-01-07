
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_un {int sun_path; } ;
struct TYPE_4__ {int s6_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_flowinfo; scalar_t__ sin6_scope_id; int sin6_port; TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNIX ;
 int CMP (scalar_t__,scalar_t__) ;
 int assert (int) ;
 int memcmp (int ,int ,int) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int strcmp (int ,int ) ;

int h2o_socket_compare_address(struct sockaddr *x, struct sockaddr *y, int check_port)
{






    do { if (x->sa_family != y->sa_family) return x->sa_family < y->sa_family ? -1 : 1; } while (0);

    if (x->sa_family == AF_UNIX) {
        struct sockaddr_un *xun = (void *)x, *yun = (void *)y;
        int r = strcmp(xun->sun_path, yun->sun_path);
        if (r != 0)
            return r;
    } else if (x->sa_family == AF_INET) {
        struct sockaddr_in *xin = (void *)x, *yin = (void *)y;
        do { if (ntohl(xin->sin_addr.s_addr) != ntohl(yin->sin_addr.s_addr)) return ntohl(xin->sin_addr.s_addr) < ntohl(yin->sin_addr.s_addr) ? -1 : 1; } while (0);
        if (check_port)
            do { if (ntohs(xin->sin_port) != ntohs(yin->sin_port)) return ntohs(xin->sin_port) < ntohs(yin->sin_port) ? -1 : 1; } while (0);
    } else if (x->sa_family == AF_INET6) {
        struct sockaddr_in6 *xin6 = (void *)x, *yin6 = (void *)y;
        int r = memcmp(xin6->sin6_addr.s6_addr, yin6->sin6_addr.s6_addr, sizeof(xin6->sin6_addr.s6_addr));
        if (r != 0)
            return r;
        if (check_port)
            do { if (ntohs(xin6->sin6_port) != ntohs(yin6->sin6_port)) return ntohs(xin6->sin6_port) < ntohs(yin6->sin6_port) ? -1 : 1; } while (0);
        do { if (xin6->sin6_flowinfo != yin6->sin6_flowinfo) return xin6->sin6_flowinfo < yin6->sin6_flowinfo ? -1 : 1; } while (0);
        do { if (xin6->sin6_scope_id != yin6->sin6_scope_id) return xin6->sin6_scope_id < yin6->sin6_scope_id ? -1 : 1; } while (0);
    } else {
        assert(!"unknown sa_family");
    }


    return 0;
}
