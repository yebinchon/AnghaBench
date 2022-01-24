#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  duration; scalar_t__ size; } ;
struct TYPE_8__ {int serial; struct TYPE_8__* next; TYPE_3__ pkt; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; TYPE_2__* recycle_pkt; int /*<<< orphan*/  duration; int /*<<< orphan*/  size; int /*<<< orphan*/  nb_packets; int /*<<< orphan*/ * last_pkt; TYPE_2__* first_pkt; scalar_t__ abort_request; } ;
typedef  TYPE_1__ PacketQueue ;
typedef  TYPE_2__ MyAVPacketList ;
typedef  TYPE_3__ AVPacket ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_PKT_DURATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(PacketQueue *q, AVPacket *pkt, int block, int *serial)
{
    MyAVPacketList *pkt1;
    int ret;

    FUNC2(q->mutex);

    for (;;) {
        if (q->abort_request) {
            ret = -1;
            break;
        }

        pkt1 = q->first_pkt;
        if (pkt1) {
            q->first_pkt = pkt1->next;
            if (!q->first_pkt)
                q->last_pkt = NULL;
            q->nb_packets--;
            q->size -= pkt1->pkt.size + sizeof(*pkt1);
            q->duration -= FUNC0(pkt1->pkt.duration, MIN_PKT_DURATION);
            *pkt = pkt1->pkt;
            if (serial)
                *serial = pkt1->serial;
#ifdef FFP_MERGE
            av_free(pkt1);
#else
            pkt1->next = q->recycle_pkt;
            q->recycle_pkt = pkt1;
#endif
            ret = 1;
            break;
        } else if (!block) {
            ret = 0;
            break;
        } else {
            FUNC1(q->cond, q->mutex);
        }
    }
    FUNC3(q->mutex);
    return ret;
}