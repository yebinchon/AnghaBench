
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct vio_dring_state {int prod; } ;
struct vio_disk_vtoc {int dummy; } ;
struct vio_disk_geom {int dummy; } ;
struct vio_disk_devid {int dummy; } ;
struct TYPE_3__ {int state; int ack; } ;
struct vio_disk_desc {int operation; int size; int ncookies; TYPE_1__ hdr; scalar_t__ offset; int status; scalar_t__ slice; int req_id; int cookies; } ;
struct vio_completion {int err; int com; int waiting_for; } ;
struct TYPE_4__ {int lock; struct vio_completion* cmp; int lp; struct vio_dring_state* drings; } ;
struct vdc_port {int operations; TYPE_2__ vio; int req_id; int ring_cookies; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 unsigned int LDC_MAP_DIRECT ;
 unsigned int LDC_MAP_IO ;
 unsigned int LDC_MAP_R ;
 unsigned int LDC_MAP_RW ;
 unsigned int LDC_MAP_SHADOW ;
 unsigned int LDC_MAP_W ;
 int VIO_ACK_ENABLE ;
 int VIO_DESC_READY ;
 size_t VIO_DRIVER_TX_RING ;
 int WAITING_FOR_GEN_CMD ;
 int __vdc_tx_trigger (struct vdc_port*) ;
 int init_completion (int *) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int ldc_map_single (int ,void*,int,int ,int ,unsigned int) ;
 int memcpy (void*,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vio_disk_desc* vio_dring_cur (struct vio_dring_state*) ;
 int vio_dring_next (struct vio_dring_state*,int ) ;
 int wait_for_completion (int *) ;
 int wmb () ;

__attribute__((used)) static int generic_request(struct vdc_port *port, u8 op, void *buf, int len)
{
 struct vio_dring_state *dr;
 struct vio_completion comp;
 struct vio_disk_desc *desc;
 unsigned int map_perm;
 unsigned long flags;
 int op_len, err;
 void *req_buf;

 if (!(((u64)1 << (u64)op) & port->operations))
  return -EOPNOTSUPP;

 switch (op) {
 case 140:
 case 139:
 default:
  return -EINVAL;

 case 138:
  op_len = 0;
  map_perm = 0;
  break;

 case 133:
  op_len = sizeof(u32);
  map_perm = LDC_MAP_W;
  break;

 case 128:
  op_len = sizeof(u32);
  map_perm = LDC_MAP_R;
  break;

 case 134:
  op_len = sizeof(struct vio_disk_vtoc);
  map_perm = LDC_MAP_W;
  break;

 case 129:
  op_len = sizeof(struct vio_disk_vtoc);
  map_perm = LDC_MAP_R;
  break;

 case 136:
  op_len = sizeof(struct vio_disk_geom);
  map_perm = LDC_MAP_W;
  break;

 case 131:
  op_len = sizeof(struct vio_disk_geom);
  map_perm = LDC_MAP_R;
  break;

 case 132:
  op_len = 16;
  map_perm = LDC_MAP_RW;
  break;

 case 137:
  op_len = sizeof(struct vio_disk_devid);
  map_perm = LDC_MAP_W;
  break;

 case 135:
 case 130:
  return -EOPNOTSUPP;
 };

 map_perm |= LDC_MAP_SHADOW | LDC_MAP_DIRECT | LDC_MAP_IO;

 op_len = (op_len + 7) & ~7;
 req_buf = kzalloc(op_len, GFP_KERNEL);
 if (!req_buf)
  return -ENOMEM;

 if (len > op_len)
  len = op_len;

 if (map_perm & LDC_MAP_R)
  memcpy(req_buf, buf, len);

 spin_lock_irqsave(&port->vio.lock, flags);

 dr = &port->vio.drings[VIO_DRIVER_TX_RING];




 desc = vio_dring_cur(dr);

 err = ldc_map_single(port->vio.lp, req_buf, op_len,
        desc->cookies, port->ring_cookies,
        map_perm);
 if (err < 0) {
  spin_unlock_irqrestore(&port->vio.lock, flags);
  kfree(req_buf);
  return err;
 }

 init_completion(&comp.com);
 comp.waiting_for = WAITING_FOR_GEN_CMD;
 port->vio.cmp = &comp;

 desc->hdr.ack = VIO_ACK_ENABLE;
 desc->req_id = port->req_id;
 desc->operation = op;
 desc->slice = 0;
 desc->status = ~0;
 desc->offset = 0;
 desc->size = op_len;
 desc->ncookies = err;




 wmb();
 desc->hdr.state = VIO_DESC_READY;

 err = __vdc_tx_trigger(port);
 if (err >= 0) {
  port->req_id++;
  dr->prod = vio_dring_next(dr, dr->prod);
  spin_unlock_irqrestore(&port->vio.lock, flags);

  wait_for_completion(&comp.com);
  err = comp.err;
 } else {
  port->vio.cmp = ((void*)0);
  spin_unlock_irqrestore(&port->vio.lock, flags);
 }

 if (map_perm & LDC_MAP_W)
  memcpy(buf, req_buf, len);

 kfree(req_buf);

 return err;
}
