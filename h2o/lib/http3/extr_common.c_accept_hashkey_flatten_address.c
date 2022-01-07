
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_11__ {int sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_9__ {int * s6_addr; } ;
struct TYPE_10__ {TYPE_2__ sin6_addr; } ;
struct TYPE_12__ {int sa_family; } ;
struct TYPE_13__ {TYPE_4__ sin; TYPE_3__ sin6; TYPE_5__ sa; } ;
typedef TYPE_6__ quicly_address_t ;





 int h2o_fatal (char*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static uint8_t *accept_hashkey_flatten_address(uint8_t *p, quicly_address_t *addr)
{
    switch (addr->sa.sa_family) {
    case 130:
        *p++ = 4;
        memcpy(p, &addr->sin.sin_addr.s_addr, 4);
        p += 4;
        memcpy(p, &addr->sin.sin_port, 2);
        p += 2;
        break;
    case 129:
        *p++ = 6;
        memcpy(p, addr->sin6.sin6_addr.s6_addr, 16);
        p += 16;
        memcpy(p, &addr->sin.sin_port, 2);
        p += 2;
        break;
    case 128:
        *p++ = 0;
    default:
        h2o_fatal("unknown protocol family");
        break;
    }
    return p;
}
