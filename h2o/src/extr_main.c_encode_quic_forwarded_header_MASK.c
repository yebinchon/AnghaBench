#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  quicly_address_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_QUIC_FORWARDED_VERSION ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(void *buf, quicly_address_t *destaddr, quicly_address_t *srcaddr, uint8_t ttl)
{
    uint8_t *dst = buf;

    *dst++ = 0x80;
    dst = FUNC1(dst, H2O_QUIC_FORWARDED_VERSION);
    dst = FUNC0(dst, destaddr);
    dst = FUNC0(dst, srcaddr);
    *dst++ = ttl;

    return dst - (uint8_t *)buf;
}