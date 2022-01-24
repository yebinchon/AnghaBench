#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rx_in ;
struct TYPE_10__ {int /*<<< orphan*/ * ptr; int /*<<< orphan*/  limit; int /*<<< orphan*/  start; } ;
struct TYPE_11__ {scalar_t__ pending; scalar_t__ maximum; int /*<<< orphan*/  lock; TYPE_2__ in; } ;
typedef  TYPE_3__ amb_rxq ;
struct TYPE_12__ {TYPE_3__* rxq; } ;
typedef  TYPE_4__ amb_dev ;
struct TYPE_9__ {int /*<<< orphan*/ * rx_address; } ;
struct TYPE_13__ {TYPE_1__ adapter; } ;

/* Variables and functions */
 int DBG_FLOW ; 
 int DBG_RX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,TYPE_4__*,...) ; 
 int /*<<< orphan*/  amb_mem ; 
 TYPE_7__ mb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (amb_dev * dev, rx_in * rx, unsigned char pool) {
  amb_rxq * rxq = &dev->rxq[pool];
  unsigned long flags;
  
  FUNC1 (DBG_FLOW|DBG_RX, "rx_give %p[%hu]", dev, pool);
  
  FUNC3 (&rxq->lock, flags);
  
  if (rxq->pending < rxq->maximum) {
    FUNC1 (DBG_RX, "RX in slot %p", rxq->in.ptr);

    *rxq->in.ptr = *rx;
    rxq->pending++;
    rxq->in.ptr = FUNC0 (rxq->in.ptr, rxq->in.start, rxq->in.limit);
    // hand over the RX buffer
    FUNC6 (dev, FUNC2(amb_mem, mb.adapter.rx_address[pool]), FUNC5 (rxq->in.ptr));
    
    FUNC4 (&rxq->lock, flags);
    return 0;
  } else {
    FUNC4 (&rxq->lock, flags);
    return -1;
  }
}