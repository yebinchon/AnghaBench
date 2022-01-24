#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  packet_buffering; } ;
struct TYPE_7__ {scalar_t__ is_buffer_indicator; } ;
typedef  TYPE_1__ PacketQueue ;
typedef  TYPE_2__ FFPlayer ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int FUNC4(FFPlayer *ffp, PacketQueue *q, AVPacket *pkt, int *serial, int *finished)
{
    FUNC0(finished);
    if (!ffp->packet_buffering)
        return FUNC3(q, pkt, 1, serial);

    while (1) {
        int new_packet = FUNC3(q, pkt, 0, serial);
        if (new_packet < 0)
            return -1;
        else if (new_packet == 0) {
            if (q->is_buffer_indicator && !*finished)
                FUNC2(ffp, 1);
            new_packet = FUNC3(q, pkt, 1, serial);
            if (new_packet < 0)
                return -1;
        }

        if (*finished == *serial) {
            FUNC1(pkt);
            continue;
        }
        else
            break;
    }

    return 1;
}