#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ PacketQueue ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flush_pkt ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(PacketQueue *q, AVPacket *pkt)
{
    int ret;

    FUNC0(q->mutex);
    ret = FUNC3(q, pkt);
    FUNC1(q->mutex);

    if (pkt != &flush_pkt && ret < 0)
        FUNC2(pkt);

    return ret;
}