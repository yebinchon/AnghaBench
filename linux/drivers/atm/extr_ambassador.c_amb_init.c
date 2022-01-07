
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int loader_block ;
typedef int amb_dev ;


 int EINVAL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int PRINTK (int ,char*,...) ;
 scalar_t__ amb_reset (int *,int) ;
 scalar_t__ amb_talk (int *) ;
 int amb_ucode_version (int *) ;
 int cmds ;
 scalar_t__ create_queues (int *,int ,int ,int ,int ) ;
 int destroy_queues (int *) ;
 int fixup_plx_window (int *,int *) ;
 scalar_t__ get_loader_version (int *,int *,int *) ;
 int rxs ;
 int rxs_bs ;
 int txs ;
 scalar_t__ ucode_init (int *,int *) ;

__attribute__((used)) static int amb_init(amb_dev *dev)
{
  loader_block lb;

  u32 version;

  if (amb_reset (dev, 1)) {
    PRINTK (KERN_ERR, "card reset failed!");
  } else {
    fixup_plx_window (dev, &lb);

    if (get_loader_version (&lb, dev, &version)) {
      PRINTK (KERN_INFO, "failed to get loader version");
    } else {
      PRINTK (KERN_INFO, "loader version is %08x", version);

      if (ucode_init (&lb, dev)) {
 PRINTK (KERN_ERR, "microcode failure");
      } else if (create_queues (dev, cmds, txs, rxs, rxs_bs)) {
 PRINTK (KERN_ERR, "failed to get memory for queues");
      } else {

 if (amb_talk (dev)) {
   PRINTK (KERN_ERR, "adapter did not accept queues");
 } else {

   amb_ucode_version (dev);
   return 0;

 }

 destroy_queues (dev);
      }

      amb_reset (dev, 0);
    }

  }

  return -EINVAL;
}
