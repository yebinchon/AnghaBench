
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int sa_family; } ;
struct TYPE_11__ {int * s6_addr; } ;
struct TYPE_12__ {int sin6_port; TYPE_3__ sin6_addr; int sin6_family; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_10__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct TYPE_14__ {TYPE_5__ sa; TYPE_4__ sin6; TYPE_2__ sin; } ;
typedef TYPE_6__ quicly_address_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int memcpy (int *,int const*,int) ;
 int memset (TYPE_6__*,int ,int) ;

__attribute__((used)) static int decode_quic_address(quicly_address_t *addr, const uint8_t **src, const uint8_t *end)
{
    memset(addr, 0, sizeof(*addr));

    if (*src >= end)
        return 0;
    switch (*(*src)++) {
    case 4:
        if (end - *src < 6)
            return 0;
        addr->sin.sin_family = AF_INET;
        memcpy(&addr->sin.sin_addr.s_addr, *src, 4);
        *src += 4;
        memcpy(&addr->sin.sin_port, *src, 2);
        *src += 2;
        break;
    case 6:
        if (end - *src < 18)
            return 0;
        addr->sin6.sin6_family = AF_INET6;
        memcpy(addr->sin6.sin6_addr.s6_addr, *src, 16);
        *src += 16;
        memcpy(&addr->sin6.sin6_port, *src, 2);
        *src += 2;
        break;
    case 0:
        addr->sa.sa_family = AF_UNSPEC;
        break;
    default:
        return 0;
    }
    return 1;
}
