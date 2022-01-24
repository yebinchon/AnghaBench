#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  quicly_decoded_packet_t ;
typedef  int /*<<< orphan*/  quicly_datagram_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
typedef  int /*<<< orphan*/  datagrams ;
struct TYPE_2__ {int /*<<< orphan*/  sa; } ;

/* Variables and functions */
 int QUICLY_ERROR_PACKET_IGNORED ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t) ; 
 TYPE_1__ fake_address ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 

size_t FUNC5(quicly_conn_t *src, quicly_conn_t *dst)
{
    quicly_datagram_t *datagrams[32];
    size_t num_datagrams, i;
    quicly_decoded_packet_t decoded[32];
    int ret;

    num_datagrams = sizeof(datagrams) / sizeof(datagrams[0]);
    ret = FUNC4(src, datagrams, &num_datagrams);
    FUNC2(ret == 0);

    if (num_datagrams != 0) {
        size_t num_packets = FUNC0(decoded, datagrams, num_datagrams);
        for (i = 0; i != num_packets; ++i) {
            ret = FUNC3(dst, NULL, &fake_address.sa, decoded + i);
            FUNC2(ret == 0 || ret == QUICLY_ERROR_PACKET_IGNORED);
        }
        FUNC1(datagrams, num_datagrams);
    }

    return num_datagrams;
}