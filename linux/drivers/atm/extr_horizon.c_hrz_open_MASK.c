#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct atm_trafprm {int traffic_class; } ;
struct atm_qos {int aal; struct atm_trafprm rxtp; struct atm_trafprm txtp; } ;
struct atm_vcc {short vpi; int vci; int /*<<< orphan*/  flags; void* dev_data; struct atm_qos qos; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  rounding ;
struct TYPE_9__ {size_t channel; int tx_rate; scalar_t__ aal; unsigned int tx_bucket_bits; int rx_rate; void* tx_xbr_bits; void* tx_scr_bits; void* tx_pcr_bits; } ;
typedef  TYPE_1__ hrz_vcc ;
struct TYPE_10__ {int tx_avail; int rx_avail; struct atm_vcc** rxer; int /*<<< orphan*/  rate_lock; } ;
typedef  TYPE_2__ hrz_dev ;

/* Variables and functions */
 void* ABR_RATE_TYPE ; 
#define  ATM_AAL0 134 
#define  ATM_AAL34 133 
#define  ATM_AAL5 132 
#define  ATM_ABR 131 
#define  ATM_CBR 130 
 int ATM_NONE ; 
#define  ATM_UBR 129 
#define  ATM_VBR 128 
 int ATM_VCI_UNSPEC ; 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 short ATM_VPI_UNSPEC ; 
 unsigned int BUCKET_MAX_SIZE ; 
 void* CBR_RATE_TYPE ; 
 void* CLOCK_DISABLE ; 
 int DBG_ERR ; 
 int DBG_FLOW ; 
 int DBG_QOS ; 
 int DBG_VCC ; 
 int DBG_WARN ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 void* IDLE_RATE_TYPE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* VBR_RATE_TYPE ; 
 scalar_t__ aal0 ; 
 scalar_t__ aal34 ; 
 scalar_t__ aal5 ; 
 int FUNC3 (struct atm_trafprm*,int) ; 
 int FUNC4 (struct atm_trafprm*) ; 
 int FUNC5 (scalar_t__,struct atm_trafprm*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int,void**,int*) ; 
 int /*<<< orphan*/  max_rx_size ; 
 int /*<<< orphan*/  max_tx_size ; 
 int /*<<< orphan*/  round_down ; 
 int /*<<< orphan*/  round_nearest ; 
 int /*<<< orphan*/  round_up ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (size_t*,short,int) ; 

__attribute__((used)) static int FUNC15 (struct atm_vcc *atm_vcc)
{
  int error;
  u16 channel;
  
  struct atm_qos * qos;
  struct atm_trafprm * txtp;
  struct atm_trafprm * rxtp;
  
  hrz_dev * dev = FUNC0(atm_vcc->dev);
  hrz_vcc vcc;
  hrz_vcc * vccp; // allocated late
  short vpi = atm_vcc->vpi;
  int vci = atm_vcc->vci;
  FUNC1 (DBG_FLOW|DBG_VCC, "hrz_open %x %x", vpi, vci);
  
#ifdef ATM_VPI_UNSPEC
  // UNSPEC is deprecated, remove this code eventually
  if (vpi == ATM_VPI_UNSPEC || vci == ATM_VCI_UNSPEC) {
    PRINTK (KERN_WARNING, "rejecting open with unspecified VPI/VCI (deprecated)");
    return -EINVAL;
  }
#endif
  
  error = FUNC14 (&channel, vpi, vci);
  if (error) {
    FUNC1 (DBG_WARN|DBG_VCC, "VPI/VCI out of range: %hd/%d", vpi, vci);
    return error;
  }
  
  vcc.channel = channel;
  // max speed for the moment
  vcc.tx_rate = 0x0;
  
  qos = &atm_vcc->qos;
  
  // check AAL and remember it
  switch (qos->aal) {
    case ATM_AAL0:
      // we would if it were 48 bytes and not 52!
      FUNC1 (DBG_QOS|DBG_VCC, "AAL0");
      vcc.aal = aal0;
      break;
    case ATM_AAL34:
      // we would if I knew how do the SAR!
      FUNC1 (DBG_QOS|DBG_VCC, "AAL3/4");
      vcc.aal = aal34;
      break;
    case ATM_AAL5:
      FUNC1 (DBG_QOS|DBG_VCC, "AAL5");
      vcc.aal = aal5;
      break;
    default:
      FUNC1 (DBG_QOS|DBG_VCC, "Bad AAL!");
      return -EINVAL;
  }
  
  // TX traffic parameters
  
  // there are two, interrelated problems here: 1. the reservation of
  // PCR is not a binary choice, we are given bounds and/or a
  // desirable value; 2. the device is only capable of certain values,
  // most of which are not integers. It is almost certainly acceptable
  // to be off by a maximum of 1 to 10 cps.
  
  // Pragmatic choice: always store an integral PCR as that which has
  // been allocated, even if we allocate a little (or a lot) less,
  // after rounding. The actual allocation depends on what we can
  // manage with our rate selection algorithm. The rate selection
  // algorithm is given an integral PCR and a tolerance and told
  // whether it should round the value up or down if the tolerance is
  // exceeded; it returns: a) the actual rate selected (rounded up to
  // the nearest integer), b) a bit pattern to feed to the timer
  // register, and c) a failure value if no applicable rate exists.
  
  // Part of the job is done by atm_pcr_goal which gives us a PCR
  // specification which says: EITHER grab the maximum available PCR
  // (and perhaps a lower bound which we musn't pass), OR grab this
  // amount, rounding down if you have to (and perhaps a lower bound
  // which we musn't pass) OR grab this amount, rounding up if you
  // have to (and perhaps an upper bound which we musn't pass). If any
  // bounds ARE passed we fail. Note that rounding is only rounding to
  // match device limitations, we do not round down to satisfy
  // bandwidth availability even if this would not violate any given
  // lower bound.
  
  // Note: telephony = 64kb/s = 48 byte cell payload @ 500/3 cells/s
  // (say) so this is not even a binary fixpoint cell rate (but this
  // device can do it). To avoid this sort of hassle we use a
  // tolerance parameter (currently fixed at 10 cps).
  
  FUNC1 (DBG_QOS, "TX:");
  
  txtp = &qos->txtp;
  
  // set up defaults for no traffic
  vcc.tx_rate = 0;
  // who knows what would actually happen if you try and send on this?
  vcc.tx_xbr_bits = IDLE_RATE_TYPE;
  vcc.tx_pcr_bits = CLOCK_DISABLE;
#if 0
  vcc.tx_scr_bits = CLOCK_DISABLE;
  vcc.tx_bucket_bits = 0;
#endif
  
  if (txtp->traffic_class != ATM_NONE) {
    error = FUNC5 (vcc.aal, txtp, max_tx_size);
    if (error) {
      FUNC1 (DBG_QOS, "TX max_sdu check failed");
      return error;
    }
    
    switch (txtp->traffic_class) {
      case ATM_UBR: {
	// we take "the PCR" as a rate-cap
	// not reserved
	vcc.tx_rate = 0;
	FUNC9 (dev, 1<<30, round_nearest, &vcc.tx_pcr_bits, NULL);
	vcc.tx_xbr_bits = ABR_RATE_TYPE;
	break;
      }
#if 0
      case ATM_ABR: {
	// reserve min, allow up to max
	vcc.tx_rate = 0; // ?
	make_rate (dev, 1<<30, round_nearest, &vcc.tx_pcr_bits, 0);
	vcc.tx_xbr_bits = ABR_RATE_TYPE;
	break;
      }
#endif
      case ATM_CBR: {
	int pcr = FUNC4 (txtp);
	rounding r;
	if (!pcr) {
	  // down vs. up, remaining bandwidth vs. unlimited bandwidth!!
	  // should really have: once someone gets unlimited bandwidth
	  // that no more non-UBR channels can be opened until the
	  // unlimited one closes?? For the moment, round_down means
	  // greedy people actually get something and not nothing
	  r = round_down;
	  // slight race (no locking) here so we may get -EAGAIN
	  // later; the greedy bastards would deserve it :)
	  FUNC1 (DBG_QOS, "snatching all remaining TX bandwidth");
	  pcr = dev->tx_avail;
	} else if (pcr < 0) {
	  r = round_down;
	  pcr = -pcr;
	} else {
	  r = round_up;
	}
	error = FUNC10 (dev, pcr, r, 10,
					  &vcc.tx_pcr_bits, &vcc.tx_rate);
	if (error) {
	  FUNC1 (DBG_QOS, "could not make rate from TX PCR");
	  return error;
	}
	// not really clear what further checking is needed
	error = FUNC3 (txtp, vcc.tx_rate);
	if (error) {
	  FUNC1 (DBG_QOS, "TX PCR failed consistency check");
	  return error;
	}
	vcc.tx_xbr_bits = CBR_RATE_TYPE;
	break;
      }
#if 0
      case ATM_VBR: {
	int pcr = atm_pcr_goal (txtp);
	// int scr = atm_scr_goal (txtp);
	int scr = pcr/2; // just for fun
	unsigned int mbs = 60; // just for fun
	rounding pr;
	rounding sr;
	unsigned int bucket;
	if (!pcr) {
	  pr = round_nearest;
	  pcr = 1<<30;
	} else if (pcr < 0) {
	  pr = round_down;
	  pcr = -pcr;
	} else {
	  pr = round_up;
	}
	error = make_rate_with_tolerance (dev, pcr, pr, 10,
					  &vcc.tx_pcr_bits, 0);
	if (!scr) {
	  // see comments for PCR with CBR above
	  sr = round_down;
	  // slight race (no locking) here so we may get -EAGAIN
	  // later; the greedy bastards would deserve it :)
	  PRINTD (DBG_QOS, "snatching all remaining TX bandwidth");
	  scr = dev->tx_avail;
	} else if (scr < 0) {
	  sr = round_down;
	  scr = -scr;
	} else {
	  sr = round_up;
	}
	error = make_rate_with_tolerance (dev, scr, sr, 10,
					  &vcc.tx_scr_bits, &vcc.tx_rate);
	if (error) {
	  PRINTD (DBG_QOS, "could not make rate from TX SCR");
	  return error;
	}
	// not really clear what further checking is needed
	// error = atm_scr_check (txtp, vcc.tx_rate);
	if (error) {
	  PRINTD (DBG_QOS, "TX SCR failed consistency check");
	  return error;
	}
	// bucket calculations (from a piece of paper...) cell bucket
	// capacity must be largest integer smaller than m(p-s)/p + 1
	// where m = max burst size, p = pcr, s = scr
	bucket = mbs*(pcr-scr)/pcr;
	if (bucket*pcr != mbs*(pcr-scr))
	  bucket += 1;
	if (bucket > BUCKET_MAX_SIZE) {
	  PRINTD (DBG_QOS, "shrinking bucket from %u to %u",
		  bucket, BUCKET_MAX_SIZE);
	  bucket = BUCKET_MAX_SIZE;
	}
	vcc.tx_xbr_bits = VBR_RATE_TYPE;
	vcc.tx_bucket_bits = bucket;
	break;
      }
#endif
      default: {
	FUNC1 (DBG_QOS, "unsupported TX traffic class");
	return -EINVAL;
      }
    }
  }
  
  // RX traffic parameters
  
  FUNC1 (DBG_QOS, "RX:");
  
  rxtp = &qos->rxtp;
  
  // set up defaults for no traffic
  vcc.rx_rate = 0;
  
  if (rxtp->traffic_class != ATM_NONE) {
    error = FUNC5 (vcc.aal, rxtp, max_rx_size);
    if (error) {
      FUNC1 (DBG_QOS, "RX max_sdu check failed");
      return error;
    }
    switch (rxtp->traffic_class) {
      case ATM_UBR: {
	// not reserved
	break;
      }
#if 0
      case ATM_ABR: {
	// reserve min
	vcc.rx_rate = 0; // ?
	break;
      }
#endif
      case ATM_CBR: {
	int pcr = FUNC4 (rxtp);
	if (!pcr) {
	  // slight race (no locking) here so we may get -EAGAIN
	  // later; the greedy bastards would deserve it :)
	  FUNC1 (DBG_QOS, "snatching all remaining RX bandwidth");
	  pcr = dev->rx_avail;
	} else if (pcr < 0) {
	  pcr = -pcr;
	}
	vcc.rx_rate = pcr;
	// not really clear what further checking is needed
	error = FUNC3 (rxtp, vcc.rx_rate);
	if (error) {
	  FUNC1 (DBG_QOS, "RX PCR failed consistency check");
	  return error;
	}
	break;
      }
#if 0
      case ATM_VBR: {
	// int scr = atm_scr_goal (rxtp);
	int scr = 1<<16; // just for fun
	if (!scr) {
	  // slight race (no locking) here so we may get -EAGAIN
	  // later; the greedy bastards would deserve it :)
	  PRINTD (DBG_QOS, "snatching all remaining RX bandwidth");
	  scr = dev->rx_avail;
	} else if (scr < 0) {
	  scr = -scr;
	}
	vcc.rx_rate = scr;
	// not really clear what further checking is needed
	// error = atm_scr_check (rxtp, vcc.rx_rate);
	if (error) {
	  PRINTD (DBG_QOS, "RX SCR failed consistency check");
	  return error;
	}
	break;
      }
#endif
      default: {
	FUNC1 (DBG_QOS, "unsupported RX traffic class");
	return -EINVAL;
      }
    }
  }
  
  
  // late abort useful for diagnostics
  if (vcc.aal != aal5) {
    FUNC1 (DBG_QOS, "AAL not supported");
    return -EINVAL;
  }
  
  // get space for our vcc stuff and copy parameters into it
  vccp = FUNC8 (sizeof(hrz_vcc), GFP_KERNEL);
  if (!vccp) {
    FUNC2 (KERN_ERR, "out of memory!");
    return -ENOMEM;
  }
  *vccp = vcc;
  
  // clear error and grab cell rate resource lock
  error = 0;
  FUNC12 (&dev->rate_lock);
  
  if (vcc.tx_rate > dev->tx_avail) {
    FUNC1 (DBG_QOS, "not enough TX PCR left");
    error = -EAGAIN;
  }
  
  if (vcc.rx_rate > dev->rx_avail) {
    FUNC1 (DBG_QOS, "not enough RX PCR left");
    error = -EAGAIN;
  }
  
  if (!error) {
    // really consume cell rates
    dev->tx_avail -= vcc.tx_rate;
    dev->rx_avail -= vcc.rx_rate;
    FUNC1 (DBG_QOS|DBG_VCC, "reserving %u TX PCR and %u RX PCR",
	    vcc.tx_rate, vcc.rx_rate);
  }
  
  // release lock and exit on error
  FUNC13 (&dev->rate_lock);
  if (error) {
    FUNC1 (DBG_QOS|DBG_VCC, "insufficient cell rate resources");
    FUNC7 (vccp);
    return error;
  }
  
  // this is "immediately before allocating the connection identifier
  // in hardware" - so long as the next call does not fail :)
  FUNC11(ATM_VF_ADDR,&atm_vcc->flags);
  
  // any errors here are very serious and should never occur
  
  if (rxtp->traffic_class != ATM_NONE) {
    if (dev->rxer[channel]) {
      FUNC1 (DBG_ERR|DBG_VCC, "VC already open for RX");
      error = -EBUSY;
    }
    if (!error)
      error = FUNC6 (dev, channel);
    if (error) {
      FUNC7 (vccp);
      return error;
    }
    // this link allows RX frames through
    dev->rxer[channel] = atm_vcc;
  }
  
  // success, set elements of atm_vcc
  atm_vcc->dev_data = (void *) vccp;
  
  // indicate readiness
  FUNC11(ATM_VF_READY,&atm_vcc->flags);
  
  return 0;
}