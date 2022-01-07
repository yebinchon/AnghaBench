
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct drbd_device* private; } ;
struct drbd_device {int resync; } ;


 int D_FAILED ;
 scalar_t__ get_ldev_if_state (struct drbd_device*,int ) ;
 int lc_seq_dump_details (struct seq_file*,int ,char*,int ) ;
 int lc_seq_printf_stats (struct seq_file*,int ) ;
 int put_ldev (struct drbd_device*) ;
 int resync_dump_detail ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int device_resync_extents_show(struct seq_file *m, void *ignored)
{
 struct drbd_device *device = m->private;


 seq_printf(m, "v: %u\n\n", 0);

 if (get_ldev_if_state(device, D_FAILED)) {
  lc_seq_printf_stats(m, device->resync);
  lc_seq_dump_details(m, device->resync, "rs_left flags", resync_dump_detail);
  put_ldev(device);
 }
 return 0;
}
