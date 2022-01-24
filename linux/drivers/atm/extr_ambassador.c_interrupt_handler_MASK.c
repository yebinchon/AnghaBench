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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  amb_dev ;

/* Variables and functions */
 int DBG_FLOW ; 
 int DBG_IRQ ; 
 int DBG_WARN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned char NUM_RX_POOLS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  amb_mem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* interrupt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id) {
  amb_dev * dev = dev_id;
  
  FUNC0 (DBG_IRQ|DBG_FLOW, "interrupt_handler: %p", dev_id);
  
  {
    u32 interrupt = FUNC3 (dev, FUNC2(amb_mem, interrupt));
  
    // for us or someone else sharing the same interrupt
    if (!interrupt) {
      FUNC0 (DBG_IRQ, "irq not for me: %d", irq);
      return IRQ_NONE;
    }
    
    // definitely for us
    FUNC0 (DBG_IRQ, "FYI: interrupt was %08x", interrupt);
    FUNC6 (dev, FUNC2(amb_mem, interrupt), -1);
  }
  
  {
    unsigned int irq_work = 0;
    unsigned char pool;
    for (pool = 0; pool < NUM_RX_POOLS; ++pool)
      while (!FUNC4 (dev, pool))
	++irq_work;
    while (!FUNC5 (dev))
      ++irq_work;
  
    if (irq_work) {
      FUNC1 (dev);

      FUNC0 (DBG_IRQ, "work done: %u", irq_work);
    } else {
      FUNC0 (DBG_IRQ|DBG_WARN, "no work done");
    }
  }
  
  FUNC0 (DBG_IRQ|DBG_FLOW, "interrupt_handler done: %p", dev_id);
  return IRQ_HANDLED;
}