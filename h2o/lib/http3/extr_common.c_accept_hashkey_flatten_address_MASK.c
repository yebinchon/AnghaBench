#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_11__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/ * s6_addr; } ;
struct TYPE_10__ {TYPE_2__ sin6_addr; } ;
struct TYPE_12__ {int sa_family; } ;
struct TYPE_13__ {TYPE_4__ sin; TYPE_3__ sin6; TYPE_5__ sa; } ;
typedef  TYPE_6__ quicly_address_t ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNSPEC 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t *FUNC2(uint8_t *p, quicly_address_t *addr)
{
    switch (addr->sa.sa_family) {
    case AF_INET:
        *p++ = 4;
        FUNC1(p, &addr->sin.sin_addr.s_addr, 4);
        p += 4;
        FUNC1(p, &addr->sin.sin_port, 2);
        p += 2;
        break;
    case AF_INET6:
        *p++ = 6;
        FUNC1(p, addr->sin6.sin6_addr.s6_addr, 16);
        p += 16;
        FUNC1(p, &addr->sin.sin_port, 2);
        p += 2;
        break;
    case AF_UNSPEC:
        *p++ = 0;
    default:
        FUNC0("unknown protocol family");
        break;
    }
    return p;
}