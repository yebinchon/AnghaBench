
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;
struct xenbus_device {unsigned long long state; int nodename; } ;
struct xen_vbd {unsigned long long size; int pdevice; } ;
struct xen_blkif {int domid; int be; struct xen_vbd vbd; } ;


 int EAGAIN ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int pr_info (char*,unsigned long long,...) ;
 int pr_warn (char*) ;
 unsigned long long vbd_sz (struct xen_vbd*) ;
 struct xenbus_device* xen_blkbk_xenbus (int ) ;
 int xenbus_printf (struct xenbus_transaction,int ,char*,char*,unsigned long long) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;

__attribute__((used)) static void xen_vbd_resize(struct xen_blkif *blkif)
{
 struct xen_vbd *vbd = &blkif->vbd;
 struct xenbus_transaction xbt;
 int err;
 struct xenbus_device *dev = xen_blkbk_xenbus(blkif->be);
 unsigned long long new_size = vbd_sz(vbd);

 pr_info("VBD Resize: Domid: %d, Device: (%d, %d)\n",
  blkif->domid, MAJOR(vbd->pdevice), MINOR(vbd->pdevice));
 pr_info("VBD Resize: new size %llu\n", new_size);
 vbd->size = new_size;
again:
 err = xenbus_transaction_start(&xbt);
 if (err) {
  pr_warn("Error starting transaction\n");
  return;
 }
 err = xenbus_printf(xbt, dev->nodename, "sectors", "%llu",
       (unsigned long long)vbd_sz(vbd));
 if (err) {
  pr_warn("Error writing new size\n");
  goto abort;
 }





 err = xenbus_printf(xbt, dev->nodename, "state", "%d", dev->state);
 if (err) {
  pr_warn("Error writing the state\n");
  goto abort;
 }

 err = xenbus_transaction_end(xbt, 0);
 if (err == -EAGAIN)
  goto again;
 if (err)
  pr_warn("Error ending transaction\n");
 return;
abort:
 xenbus_transaction_end(xbt, 1);
}
