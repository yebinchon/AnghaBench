
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int rx_wsize; int tx_wsize; int maxio; int timeout; int in_use; } ;
struct TYPE_3__ {int icr; } ;



 int DSP56K_ICR_HF0 ;
 int DSP56K_ICR_HF1 ;
 int DSP56K_RX_INT_OFF ;
 int DSP56K_TX_INT_OFF ;
 int EBUSY ;
 int ENODEV ;
 int MAXIO ;
 int TIMEOUT ;
 TYPE_2__ dsp56k ;
 TYPE_1__ dsp56k_host_interface ;
 int dsp56k_mutex ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int dsp56k_open(struct inode *inode, struct file *file)
{
 int dev = iminor(inode) & 0x0f;
 int ret = 0;

 mutex_lock(&dsp56k_mutex);
 switch(dev)
 {
 case 128:

  if (test_and_set_bit(0, &dsp56k.in_use)) {
   ret = -EBUSY;
   goto out;
  }

  dsp56k.timeout = TIMEOUT;
  dsp56k.maxio = MAXIO;
  dsp56k.rx_wsize = dsp56k.tx_wsize = 4;

  DSP56K_TX_INT_OFF;
  DSP56K_RX_INT_OFF;


  dsp56k_host_interface.icr &= ~DSP56K_ICR_HF0;
  dsp56k_host_interface.icr &= ~DSP56K_ICR_HF1;

  break;

 default:
  ret = -ENODEV;
 }
out:
 mutex_unlock(&dsp56k_mutex);
 return ret;
}
