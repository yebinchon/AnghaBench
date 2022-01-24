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
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  limit; int /*<<< orphan*/  start; TYPE_6__* ptr; } ;
struct TYPE_11__ {scalar_t__ pending; scalar_t__ low; int /*<<< orphan*/  lock; int /*<<< orphan*/  emptied; scalar_t__ buffers_wanted; TYPE_1__ out; } ;
typedef  TYPE_2__ amb_rxq ;
struct TYPE_12__ {TYPE_2__* rxq; } ;
typedef  TYPE_3__ amb_dev ;
struct TYPE_13__ {scalar_t__ length; scalar_t__ status; } ;

/* Variables and functions */
 int DBG_FLOW ; 
 int DBG_RX ; 
 TYPE_6__* FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,TYPE_3__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5 (amb_dev * dev, unsigned char pool) {
  amb_rxq * rxq = &dev->rxq[pool];
  unsigned long flags;
  
  FUNC1 (DBG_FLOW|DBG_RX, "rx_take %p[%hu]", dev, pool);
  
  FUNC3 (&rxq->lock, flags);
  
  if (rxq->pending && (rxq->out.ptr->status || rxq->out.ptr->length)) {
    // deal with RX completion
    FUNC2 (dev, rxq->out.ptr);
    // mark unused again
    rxq->out.ptr->status = 0;
    rxq->out.ptr->length = 0;
    // remove item
    rxq->pending--;
    rxq->out.ptr = FUNC0 (rxq->out.ptr, rxq->out.start, rxq->out.limit);
    
    if (rxq->pending < rxq->low)
      rxq->low = rxq->pending;
    FUNC4 (&rxq->lock, flags);
    return 0;
  } else {
    if (!rxq->pending && rxq->buffers_wanted)
      rxq->emptied++;
    FUNC4 (&rxq->lock, flags);
    return -1;
  }
}