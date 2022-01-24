#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_13__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  size_t u16 ;
struct TYPE_27__ {scalar_t__ traffic_class; } ;
struct TYPE_25__ {scalar_t__ traffic_class; } ;
struct TYPE_28__ {TYPE_3__ rxtp; TYPE_1__ txtp; } ;
struct atm_vcc {size_t vci; int /*<<< orphan*/  flags; TYPE_4__ qos; int /*<<< orphan*/  dev; } ;
struct TYPE_32__ {void* vc; } ;
struct TYPE_30__ {void* flags; void* vc; } ;
struct TYPE_26__ {void* rate; void* vc; } ;
struct TYPE_33__ {TYPE_8__ close; TYPE_6__ modify_flags; TYPE_2__ modify_rate; } ;
struct TYPE_22__ {TYPE_9__ args; void* request; } ;
typedef  TYPE_11__ command ;
struct TYPE_29__ {unsigned char pool; } ;
struct TYPE_23__ {TYPE_5__ rx_info; } ;
typedef  TYPE_12__ amb_vcc ;
struct TYPE_24__ {int /*<<< orphan*/  vcc_sf; TYPE_10__* rxq; struct atm_vcc** rxer; TYPE_7__* txer; } ;
typedef  TYPE_13__ amb_dev ;
struct TYPE_31__ {size_t tx_vc_bits; scalar_t__ tx_present; } ;
struct TYPE_21__ {scalar_t__ buffers_wanted; } ;

/* Variables and functions */
 TYPE_13__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC1 (struct atm_vcc*) ; 
 scalar_t__ ATM_NONE ; 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int DBG_FLOW ; 
 int DBG_VCC ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,TYPE_12__*,struct atm_vcc*) ; 
 size_t SRB_CLOSE_VC ; 
 size_t SRB_FLAGS_SHIFT ; 
 size_t SRB_MODIFY_VC_FLAGS ; 
 size_t SRB_MODIFY_VC_RATE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_13__*,TYPE_11__*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_13__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ rx_lats ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12 (struct atm_vcc * atm_vcc) {
  amb_dev * dev = FUNC0 (atm_vcc->dev);
  amb_vcc * vcc = FUNC1 (atm_vcc);
  u16 vci = atm_vcc->vci;
  
  FUNC2 (DBG_VCC|DBG_FLOW, "amb_close");
  
  // indicate unreadiness
  FUNC4(ATM_VF_READY,&atm_vcc->flags);
  
  // disable TXing
  if (atm_vcc->qos.txtp.traffic_class != ATM_NONE) {
    command cmd;
    
    FUNC9(&dev->vcc_sf);
    if (dev->rxer[vci]) {
      // RXer still on the channel, just modify rate... XXX not really needed
      cmd.request = FUNC6 (SRB_MODIFY_VC_RATE);
      cmd.args.modify_rate.vc = FUNC6 (vci);  // vpi 0
      cmd.args.modify_rate.rate = FUNC6 (0);
      // ... and clear TX rate flags (XXX to stop RM cell output?), preserving RX pool
    } else {
      // no RXer on the channel, close channel
      cmd.request = FUNC6 (SRB_CLOSE_VC);
      cmd.args.close.vc = FUNC6 (vci); // vpi 0
    }
    dev->txer[vci].tx_present = 0;
    while (FUNC5 (dev, &cmd))
      FUNC11();
    FUNC10(&dev->vcc_sf);
  }
  
  // disable RXing
  if (atm_vcc->qos.rxtp.traffic_class != ATM_NONE) {
    command cmd;
    
    // this is (the?) one reason why we need the amb_vcc struct
    unsigned char pool = vcc->rx_info.pool;
    
    FUNC9(&dev->vcc_sf);
    if (dev->txer[vci].tx_present) {
      // TXer still on the channel, just go to pool zero XXX not really needed
      cmd.request = FUNC6 (SRB_MODIFY_VC_FLAGS);
      cmd.args.modify_flags.vc = FUNC6 (vci);  // vpi 0
      cmd.args.modify_flags.flags = FUNC6
	(dev->txer[vci].tx_vc_bits << SRB_FLAGS_SHIFT);
    } else {
      // no TXer on the channel, close the VC
      cmd.request = FUNC6 (SRB_CLOSE_VC);
      cmd.args.close.vc = FUNC6 (vci); // vpi 0
    }
    // forget the rxer - no more skbs will be pushed
    if (atm_vcc != dev->rxer[vci])
      FUNC3 (KERN_ERR, "%s vcc=%p rxer[vci]=%p",
	      "arghhh! we're going to die!",
	      vcc, dev->rxer[vci]);
    dev->rxer[vci] = NULL;
    while (FUNC5 (dev, &cmd))
      FUNC11();
    
    /* shrink RX buffer pool */
    dev->rxq[pool].buffers_wanted -= 1;
    if (dev->rxq[pool].buffers_wanted == rx_lats) {
      dev->rxq[pool].buffers_wanted = 0;
      FUNC7 (dev, pool);
    }
    FUNC10(&dev->vcc_sf);
  }
  
  // free our structure
  FUNC8 (vcc);
  
  // say the VPI/VCI is free again
  FUNC4(ATM_VF_ADDR,&atm_vcc->flags);

  return;
}