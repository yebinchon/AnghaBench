
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_uml_device {int req_fd; TYPE_1__* pdev; } ;
struct TYPE_2__ {int name; } ;


 int IRQF_SHARED ;
 int IRQ_READ ;
 int VHOST_USER_SET_SLAVE_REQ_FD ;
 int VIRTIO_IRQ ;
 int os_close_file (int) ;
 int os_pipe (int*,int,int) ;
 int um_free_irq (int ,struct virtio_uml_device*) ;
 int um_request_irq (int ,int,int ,int ,int ,int ,struct virtio_uml_device*) ;
 int vhost_user_send_no_payload_fd (struct virtio_uml_device*,int ,int) ;
 int vu_req_interrupt ;

__attribute__((used)) static int vhost_user_init_slave_req(struct virtio_uml_device *vu_dev)
{
 int rc, req_fds[2];


 rc = os_pipe(req_fds, 1, 1);
 if (rc < 0)
  return rc;
 vu_dev->req_fd = req_fds[0];

 rc = um_request_irq(VIRTIO_IRQ, vu_dev->req_fd, IRQ_READ,
       vu_req_interrupt, IRQF_SHARED,
       vu_dev->pdev->name, vu_dev);
 if (rc)
  goto err_close;

 rc = vhost_user_send_no_payload_fd(vu_dev, VHOST_USER_SET_SLAVE_REQ_FD,
        req_fds[1]);
 if (rc)
  goto err_free_irq;

 goto out;

err_free_irq:
 um_free_irq(VIRTIO_IRQ, vu_dev);
err_close:
 os_close_file(req_fds[0]);
out:

 os_close_file(req_fds[1]);
 return rc;
}
