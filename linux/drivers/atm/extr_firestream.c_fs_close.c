
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_vcc {int channo; struct fs_vcc* last_skb; int close_wait; } ;
struct fs_dev {int hp_txq; int ** atm_vccs; int * tx_inuse; struct fs_vcc* ntxpckts; } ;
struct atm_trafprm {int dummy; } ;
struct TYPE_2__ {struct atm_trafprm rxtp; struct atm_trafprm txtp; } ;
struct atm_vcc {TYPE_1__ qos; int flags; int dev; } ;


 int ATM_VF_READY ;
 scalar_t__ DO_DIRECTION (struct atm_trafprm*) ;
 int FS_DEBUG_ALLOC ;
 int FS_DEBUG_QSIZE ;
 int FS_DEBUG_QUEUE ;
 struct fs_dev* FS_DEV (int ) ;
 struct fs_vcc* FS_VCC (struct atm_vcc*) ;
 scalar_t__ IS_FS50 (struct fs_dev*) ;
 int QE_CMD_IMM_INQ ;
 int QE_CMD_REG_WR ;
 int QE_CMD_RX_PURGE_INH ;
 int QE_CMD_TX_PURGE_INH ;
 int clear_bit (int,int *) ;
 int fs_dprintk (int ,char*,struct fs_vcc*) ;
 int func_enter () ;
 int func_exit () ;
 int kfree (struct fs_vcc*) ;
 int submit_command (struct fs_dev*,int *,int,int,int,int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static void fs_close(struct atm_vcc *atm_vcc)
{
 struct fs_dev *dev = FS_DEV (atm_vcc->dev);
 struct fs_vcc *vcc = FS_VCC (atm_vcc);
 struct atm_trafprm * txtp;
 struct atm_trafprm * rxtp;

 func_enter ();

 clear_bit(ATM_VF_READY, &atm_vcc->flags);

 fs_dprintk (FS_DEBUG_QSIZE, "--==**[%d]**==--", dev->ntxpckts);
 if (vcc->last_skb) {
  fs_dprintk (FS_DEBUG_QUEUE, "Waiting for skb %p to be sent.\n",
       vcc->last_skb);







  wait_event_interruptible(vcc->close_wait, !vcc->last_skb);
 }

 txtp = &atm_vcc->qos.txtp;
 rxtp = &atm_vcc->qos.rxtp;





 if (DO_DIRECTION (txtp)) {
  submit_command (dev, &dev->hp_txq,
    QE_CMD_TX_PURGE_INH | vcc->channo, 0,0,0);
  clear_bit (vcc->channo, dev->tx_inuse);
 }

 if (DO_DIRECTION (rxtp)) {
  submit_command (dev, &dev->hp_txq,
    QE_CMD_RX_PURGE_INH | QE_CMD_IMM_INQ | vcc->channo, 0,0,0);
  dev->atm_vccs [vcc->channo] = ((void*)0);


  if (IS_FS50 (dev)) {



   submit_command (dev, &dev->hp_txq,
     QE_CMD_REG_WR | QE_CMD_IMM_INQ,
     0x80 + vcc->channo, -1, 0 );
  }
 }

 fs_dprintk (FS_DEBUG_ALLOC, "Free vcc: %p\n", vcc);
 kfree (vcc);

 func_exit ();
}
