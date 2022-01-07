
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct drbd_device {scalar_t__ flush_jif; int vnr; int minor; int flags; TYPE_1__* resource; int sync_ee; int read_ee; int active_ee; } ;
struct TYPE_2__ {int req_lock; } ;


 int FLUSH_PENDING ;
 int jiffies_to_msecs (scalar_t__) ;
 int seq_print_peer_request (struct seq_file*,struct drbd_device*,int *,unsigned long) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void seq_print_device_peer_requests(struct seq_file *m,
 struct drbd_device *device, unsigned long now)
{
 seq_puts(m, "minor\tvnr\tsector\tsize\trw\tage\tflags\n");
 spin_lock_irq(&device->resource->req_lock);
 seq_print_peer_request(m, device, &device->active_ee, now);
 seq_print_peer_request(m, device, &device->read_ee, now);
 seq_print_peer_request(m, device, &device->sync_ee, now);
 spin_unlock_irq(&device->resource->req_lock);
 if (test_bit(FLUSH_PENDING, &device->flags)) {
  seq_printf(m, "%u\t%u\t-\t-\tF\t%u\tflush\n",
   device->minor, device->vnr,
   jiffies_to_msecs(now - device->flush_jif));
 }
}
