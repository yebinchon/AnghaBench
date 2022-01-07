
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct drbd_connection* private; } ;
struct drbd_request {int dummy; } ;
struct drbd_connection {TYPE_1__* resource; struct drbd_request* req_not_net_done; struct drbd_request* req_ack_pending; struct drbd_request* req_next; } ;
struct TYPE_2__ {int req_lock; } ;


 unsigned long jiffies ;
 int seq_print_minor_vnr_req (struct seq_file*,struct drbd_request*,unsigned long) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int connection_oldest_requests_show(struct seq_file *m, void *ignored)
{
 struct drbd_connection *connection = m->private;
 unsigned long now = jiffies;
 struct drbd_request *r1, *r2;


 seq_printf(m, "v: %u\n\n", 0);

 spin_lock_irq(&connection->resource->req_lock);
 r1 = connection->req_next;
 if (r1)
  seq_print_minor_vnr_req(m, r1, now);
 r2 = connection->req_ack_pending;
 if (r2 && r2 != r1) {
  r1 = r2;
  seq_print_minor_vnr_req(m, r1, now);
 }
 r2 = connection->req_not_net_done;
 if (r2 && r2 != r1)
  seq_print_minor_vnr_req(m, r2, now);
 spin_unlock_irq(&connection->resource->req_lock);
 return 0;
}
