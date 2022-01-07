
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zpci_dev {int lock; TYPE_5__* fmb; int fmb_update; } ;
struct seq_file {struct zpci_dev* private; } ;
struct TYPE_9__ {int tx_bytes; } ;
struct TYPE_8__ {int consumed_work_units; } ;
struct TYPE_7__ {int rx_bytes; } ;
struct TYPE_6__ {int dma_rbytes; } ;
struct TYPE_10__ {int format; int fmt_ind; TYPE_4__ fmt3; TYPE_3__ fmt2; TYPE_2__ fmt1; TYPE_1__ fmt0; int ld_ops; int last_update; int samples; } ;


 int ARRAY_SIZE (int ) ;
 int ZPCI_FMB_DMA_COUNTER_VALID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_common_names ;
 int pci_fmb_show (struct seq_file*,int ,int ,int *) ;
 int pci_fmt0_names ;
 int pci_fmt1_names ;
 int pci_fmt2_names ;
 int pci_fmt3_names ;
 int pci_sw_counter_show (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int pci_perf_show(struct seq_file *m, void *v)
{
 struct zpci_dev *zdev = m->private;

 if (!zdev)
  return 0;

 mutex_lock(&zdev->lock);
 if (!zdev->fmb) {
  mutex_unlock(&zdev->lock);
  seq_puts(m, "FMB statistics disabled\n");
  return 0;
 }


 seq_printf(m, "Update interval: %u ms\n", zdev->fmb_update);
 seq_printf(m, "Samples: %u\n", zdev->fmb->samples);
 seq_printf(m, "Last update TOD: %Lx\n", zdev->fmb->last_update);

 pci_fmb_show(m, pci_common_names, ARRAY_SIZE(pci_common_names),
       &zdev->fmb->ld_ops);

 switch (zdev->fmb->format) {
 case 0:
  if (!(zdev->fmb->fmt_ind & ZPCI_FMB_DMA_COUNTER_VALID))
   break;
  pci_fmb_show(m, pci_fmt0_names, ARRAY_SIZE(pci_fmt0_names),
        &zdev->fmb->fmt0.dma_rbytes);
  break;
 case 1:
  pci_fmb_show(m, pci_fmt1_names, ARRAY_SIZE(pci_fmt1_names),
        &zdev->fmb->fmt1.rx_bytes);
  break;
 case 2:
  pci_fmb_show(m, pci_fmt2_names, ARRAY_SIZE(pci_fmt2_names),
        &zdev->fmb->fmt2.consumed_work_units);
  break;
 case 3:
  pci_fmb_show(m, pci_fmt3_names, ARRAY_SIZE(pci_fmt3_names),
        &zdev->fmb->fmt3.tx_bytes);
  break;
 default:
  seq_puts(m, "Unknown format\n");
 }

 pci_sw_counter_show(m);
 mutex_unlock(&zdev->lock);
 return 0;
}
