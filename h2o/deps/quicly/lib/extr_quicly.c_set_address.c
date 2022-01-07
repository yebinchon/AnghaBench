
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_5__ {int sa_family; } ;
struct TYPE_6__ {struct sockaddr_in6 sin6; struct sockaddr_in sin; TYPE_1__ sa; } ;
typedef TYPE_2__ quicly_address_t ;





 int assert (int) ;
 int memset (TYPE_2__*,int,int) ;

__attribute__((used)) static void set_address(quicly_address_t *addr, struct sockaddr *sa)
{
    if (sa == ((void*)0)) {
        addr->sa.sa_family = 128;
        return;
    }

    switch (sa->sa_family) {
    case 128:
        addr->sa.sa_family = 128;
        break;
    case 130:
        addr->sin = *(struct sockaddr_in *)sa;
        break;
    case 129:
        addr->sin6 = *(struct sockaddr_in6 *)sa;
        break;
    default:
        memset(addr, 0xff, sizeof(*addr));
        assert(!"unexpected address type");
        break;
    }
}
