
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

__attribute__((used)) static uint8_t *encode_quic_address(uint8_t *dst, quicly_address_t *addr)
{
    switch (addr->sa.sa_family) {
    case 130:
        *dst++ = 4;
        memcpy(dst, &addr->sin.sin_addr.s_addr, 4);
        dst += 4;
        memcpy(dst, &addr->sin.sin_port, 2);
        dst += 2;
        break;
    case 129:
        *dst++ = 6;
        memcpy(dst, addr->sin6.sin6_addr.s6_addr, 16);
        dst += 16;
        memcpy(dst, &addr->sin.sin_port, 2);
        dst += 2;
        break;
    case 128:
        *dst++ = 0;
    default:
        h2o_fatal("unknown protocol family");
        break;
    }
    return dst;
}
