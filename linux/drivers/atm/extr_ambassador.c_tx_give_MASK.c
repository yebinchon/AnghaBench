#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_3__* ptr; int /*<<< orphan*/  limit; int /*<<< orphan*/  start; } ;
struct TYPE_18__ {scalar_t__ pending; scalar_t__ maximum; scalar_t__ high; int /*<<< orphan*/  lock; int /*<<< orphan*/  filled; TYPE_2__ in; } ;
struct TYPE_17__ {int /*<<< orphan*/  flags; TYPE_4__ txq; } ;
typedef  TYPE_3__ tx_in ;
typedef  TYPE_4__ amb_txq ;
typedef  TYPE_3__ amb_dev ;
struct TYPE_15__ {int /*<<< orphan*/  tx_address; } ;
struct TYPE_14__ {TYPE_1__ adapter; } ;

/* Variables and functions */
 int DBG_FLOW ; 
 int DBG_TX ; 
 int EAGAIN ; 
 TYPE_3__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  TX_FRAME ; 
 int /*<<< orphan*/  amb_mem ; 
 int /*<<< orphan*/  dead ; 
 int /*<<< orphan*/  doorbell ; 
 TYPE_10__ mb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (amb_dev * dev, tx_in * tx) {
  amb_txq * txq = &dev->txq;
  unsigned long flags;
  
  FUNC1 (DBG_FLOW|DBG_TX, "tx_give %p", dev);

  if (FUNC5 (dead, &dev->flags))
    return 0;
  
  FUNC3 (&txq->lock, flags);
  
  if (txq->pending < txq->maximum) {
    FUNC1 (DBG_TX, "TX in slot %p", txq->in.ptr);

    *txq->in.ptr = *tx;
    txq->pending++;
    txq->in.ptr = FUNC0 (txq->in.ptr, txq->in.start, txq->in.limit);
    // hand over the TX and ring the bell
    FUNC7 (dev, FUNC2(amb_mem, mb.adapter.tx_address), FUNC6 (txq->in.ptr));
    FUNC7 (dev, FUNC2(amb_mem, doorbell), TX_FRAME);
    
    if (txq->pending > txq->high)
      txq->high = txq->pending;
    FUNC4 (&txq->lock, flags);
    return 0;
  } else {
    txq->filled++;
    FUNC4 (&txq->lock, flags);
    return -EAGAIN;
  }
}