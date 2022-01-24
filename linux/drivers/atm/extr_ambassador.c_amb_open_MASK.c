#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_16__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  unsigned char u16 ;
struct atm_trafprm {int traffic_class; scalar_t__ max_sdu; } ;
struct atm_qos {scalar_t__ aal; struct atm_trafprm rxtp; struct atm_trafprm txtp; } ;
struct atm_vcc {short vpi; int vci; int /*<<< orphan*/  flags; void* dev_data; struct atm_qos qos; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  rounding ;
struct TYPE_25__ {void* rate; void* flags; void* vc; } ;
struct TYPE_23__ {void* flags; void* vc; } ;
struct TYPE_27__ {void* rate; void* vc; } ;
struct TYPE_28__ {TYPE_5__ open; TYPE_3__ modify_flags; TYPE_7__ modify_rate; } ;
struct TYPE_29__ {TYPE_8__ args; void* request; } ;
typedef  TYPE_9__ command ;
struct TYPE_22__ {unsigned char pool; } ;
struct TYPE_18__ {unsigned char tx_frame_bits; TYPE_2__ rx_info; } ;
typedef  TYPE_10__ amb_vcc ;
struct TYPE_19__ {int /*<<< orphan*/  vcc_sf; struct atm_vcc** rxer; TYPE_4__* txer; TYPE_6__* rxq; } ;
typedef  TYPE_11__ amb_dev ;
struct TYPE_26__ {unsigned int buffer_size; scalar_t__ buffers_wanted; } ;
struct TYPE_24__ {int tx_present; unsigned char tx_vc_bits; } ;
struct TYPE_21__ {unsigned char pool; } ;
struct TYPE_20__ {TYPE_1__ rx_info; } ;

/* Variables and functions */
 TYPE_11__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_16__* FUNC1 (struct atm_vcc*) ; 
 scalar_t__ ATM_AAL5 ; 
#define  ATM_ABR 129 
 int ATM_NONE ; 
#define  ATM_UBR 128 
 int ATM_VCI_UNSPEC ; 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 short ATM_VPI_UNSPEC ; 
 int DBG_FLOW ; 
 int DBG_POOL ; 
 int DBG_QOS ; 
 int DBG_VCC ; 
 int DBG_WARN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned char NUM_RX_POOLS ; 
 int NUM_VCI_BITS ; 
 int NUM_VPI_BITS ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned char SRB_FLAGS_SHIFT ; 
 unsigned char SRB_MODIFY_VC_FLAGS ; 
 unsigned char SRB_MODIFY_VC_RATE ; 
 unsigned char SRB_OPEN_VC ; 
 unsigned char SRB_POOL_SHIFT ; 
 unsigned char SRB_RATE_SHIFT ; 
 unsigned char TX_FRAME_CAPPED ; 
 unsigned char TX_FRAME_NOTCAP ; 
 unsigned char TX_UBR ; 
 unsigned char TX_UBR_CAPPED ; 
 void* FUNC4 (struct atm_trafprm*) ; 
 scalar_t__ FUNC5 (TYPE_11__*,TYPE_9__*) ; 
 void* FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,unsigned char,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* pcr ; 
 int /*<<< orphan*/  round_down ; 
 int /*<<< orphan*/  round_up ; 
 scalar_t__ rx_lats ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14 (struct atm_vcc * atm_vcc)
{
  int error;
  
  struct atm_qos * qos;
  struct atm_trafprm * txtp;
  struct atm_trafprm * rxtp;
  u16 tx_rate_bits = -1; // hush gcc
  u16 tx_vc_bits = -1; // hush gcc
  u16 tx_frame_bits = -1; // hush gcc
  
  amb_dev * dev = FUNC0(atm_vcc->dev);
  amb_vcc * vcc;
  unsigned char pool = -1; // hush gcc
  short vpi = atm_vcc->vpi;
  int vci = atm_vcc->vci;
  
  FUNC2 (DBG_FLOW|DBG_VCC, "amb_open %x %x", vpi, vci);
  
#ifdef ATM_VPI_UNSPEC
  // UNSPEC is deprecated, remove this code eventually
  if (vpi == ATM_VPI_UNSPEC || vci == ATM_VCI_UNSPEC) {
    PRINTK (KERN_WARNING, "rejecting open with unspecified VPI/VCI (deprecated)");
    return -EINVAL;
  }
#endif
  
  if (!(0 <= vpi && vpi < (1<<NUM_VPI_BITS) &&
	0 <= vci && vci < (1<<NUM_VCI_BITS))) {
    FUNC2 (DBG_WARN|DBG_VCC, "VPI/VCI out of range: %hd/%d", vpi, vci);
    return -EINVAL;
  }
  
  qos = &atm_vcc->qos;
  
  if (qos->aal != ATM_AAL5) {
    FUNC2 (DBG_QOS, "AAL not supported");
    return -EINVAL;
  }
  
  // traffic parameters
  
  FUNC2 (DBG_QOS, "TX:");
  txtp = &qos->txtp;
  if (txtp->traffic_class != ATM_NONE) {
    switch (txtp->traffic_class) {
      case ATM_UBR: {
	// we take "the PCR" as a rate-cap
	int pcr = FUNC4 (txtp);
	if (!pcr) {
	  // no rate cap
	  tx_rate_bits = 0;
	  tx_vc_bits = TX_UBR;
	  tx_frame_bits = TX_FRAME_NOTCAP;
	} else {
	  rounding r;
	  if (pcr < 0) {
	    r = round_down;
	    pcr = -pcr;
	  } else {
	    r = round_up;
	  }
	  error = FUNC9 (pcr, r, &tx_rate_bits, NULL);
	  if (error)
	    return error;
	  tx_vc_bits = TX_UBR_CAPPED;
	  tx_frame_bits = TX_FRAME_CAPPED;
	}
	break;
      }
#if 0
      case ATM_ABR: {
	pcr = atm_pcr_goal (txtp);
	PRINTD (DBG_QOS, "pcr goal = %d", pcr);
	break;
      }
#endif
      default: {
	// PRINTD (DBG_QOS, "request for non-UBR/ABR denied");
	FUNC2 (DBG_QOS, "request for non-UBR denied");
	return -EINVAL;
      }
    }
    FUNC2 (DBG_QOS, "tx_rate_bits=%hx, tx_vc_bits=%hx",
	    tx_rate_bits, tx_vc_bits);
  }
  
  FUNC2 (DBG_QOS, "RX:");
  rxtp = &qos->rxtp;
  if (rxtp->traffic_class == ATM_NONE) {
    // do nothing
  } else {
    // choose an RX pool (arranged in increasing size)
    for (pool = 0; pool < NUM_RX_POOLS; ++pool)
      if ((unsigned int) rxtp->max_sdu <= dev->rxq[pool].buffer_size) {
	FUNC2 (DBG_VCC|DBG_QOS|DBG_POOL, "chose pool %hu (max_sdu %u <= %u)",
		pool, rxtp->max_sdu, dev->rxq[pool].buffer_size);
	break;
      }
    if (pool == NUM_RX_POOLS) {
      FUNC2 (DBG_WARN|DBG_VCC|DBG_QOS|DBG_POOL,
	      "no pool suitable for VC (RX max_sdu %d is too large)",
	      rxtp->max_sdu);
      return -EINVAL;
    }
    
    switch (rxtp->traffic_class) {
      case ATM_UBR: {
	break;
      }
#if 0
      case ATM_ABR: {
	pcr = atm_pcr_goal (rxtp);
	PRINTD (DBG_QOS, "pcr goal = %d", pcr);
	break;
      }
#endif
      default: {
	// PRINTD (DBG_QOS, "request for non-UBR/ABR denied");
	FUNC2 (DBG_QOS, "request for non-UBR denied");
	return -EINVAL;
      }
    }
  }
  
  // get space for our vcc stuff
  vcc = FUNC8 (sizeof(amb_vcc), GFP_KERNEL);
  if (!vcc) {
    FUNC3 (KERN_ERR, "out of memory!");
    return -ENOMEM;
  }
  atm_vcc->dev_data = (void *) vcc;
  
  // no failures beyond this point
  
  // we are not really "immediately before allocating the connection
  // identifier in hardware", but it will just have to do!
  FUNC13(ATM_VF_ADDR,&atm_vcc->flags);
  
  if (txtp->traffic_class != ATM_NONE) {
    command cmd;
    
    vcc->tx_frame_bits = tx_frame_bits;
    
    FUNC10(&dev->vcc_sf);
    if (dev->rxer[vci]) {
      // RXer on the channel already, just modify rate...
      cmd.request = FUNC6 (SRB_MODIFY_VC_RATE);
      cmd.args.modify_rate.vc = FUNC6 (vci);  // vpi 0
      cmd.args.modify_rate.rate = FUNC6 (tx_rate_bits << SRB_RATE_SHIFT);
      while (FUNC5 (dev, &cmd))
	FUNC12();
      // ... and TX flags, preserving the RX pool
      cmd.request = FUNC6 (SRB_MODIFY_VC_FLAGS);
      cmd.args.modify_flags.vc = FUNC6 (vci);  // vpi 0
      cmd.args.modify_flags.flags = FUNC6
	( (FUNC1(dev->rxer[vci])->rx_info.pool << SRB_POOL_SHIFT)
	  | (tx_vc_bits << SRB_FLAGS_SHIFT) );
      while (FUNC5 (dev, &cmd))
	FUNC12();
    } else {
      // no RXer on the channel, just open (with pool zero)
      cmd.request = FUNC6 (SRB_OPEN_VC);
      cmd.args.open.vc = FUNC6 (vci);  // vpi 0
      cmd.args.open.flags = FUNC6 (tx_vc_bits << SRB_FLAGS_SHIFT);
      cmd.args.open.rate = FUNC6 (tx_rate_bits << SRB_RATE_SHIFT);
      while (FUNC5 (dev, &cmd))
	FUNC12();
    }
    dev->txer[vci].tx_present = 1;
    FUNC11(&dev->vcc_sf);
  }
  
  if (rxtp->traffic_class != ATM_NONE) {
    command cmd;
    
    vcc->rx_info.pool = pool;
    
    FUNC10(&dev->vcc_sf);
    /* grow RX buffer pool */
    if (!dev->rxq[pool].buffers_wanted)
      dev->rxq[pool].buffers_wanted = rx_lats;
    dev->rxq[pool].buffers_wanted += 1;
    FUNC7 (dev, pool, GFP_KERNEL);
    
    if (dev->txer[vci].tx_present) {
      // TXer on the channel already
      // switch (from pool zero) to this pool, preserving the TX bits
      cmd.request = FUNC6 (SRB_MODIFY_VC_FLAGS);
      cmd.args.modify_flags.vc = FUNC6 (vci);  // vpi 0
      cmd.args.modify_flags.flags = FUNC6
	( (pool << SRB_POOL_SHIFT)
	  | (dev->txer[vci].tx_vc_bits << SRB_FLAGS_SHIFT) );
    } else {
      // no TXer on the channel, open the VC (with no rate info)
      cmd.request = FUNC6 (SRB_OPEN_VC);
      cmd.args.open.vc = FUNC6 (vci);  // vpi 0
      cmd.args.open.flags = FUNC6 (pool << SRB_POOL_SHIFT);
      cmd.args.open.rate = FUNC6 (0);
    }
    while (FUNC5 (dev, &cmd))
      FUNC12();
    // this link allows RX frames through
    dev->rxer[vci] = atm_vcc;
    FUNC11(&dev->vcc_sf);
  }
  
  // indicate readiness
  FUNC13(ATM_VF_READY,&atm_vcc->flags);
  
  return 0;
}