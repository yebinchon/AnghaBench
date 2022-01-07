
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct virtio_uml_platform_data {int socket_path; int virtio_device_id; } ;
struct TYPE_7__ {int release; TYPE_4__* parent; } ;
struct TYPE_5__ {int vendor; int device; } ;
struct TYPE_6__ {TYPE_3__ dev; TYPE_1__ id; int * config; } ;
struct virtio_uml_device {int req_fd; int sock; TYPE_2__ vdev; struct platform_device* pdev; } ;
struct TYPE_8__ {struct virtio_uml_platform_data* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;


 int EINTR ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VIRTIO_DEV_ANY_ID ;
 struct virtio_uml_device* devm_kzalloc (TYPE_4__*,int,int ) ;
 int os_close_file (int) ;
 int os_connect_socket (int ) ;
 int platform_set_drvdata (struct platform_device*,struct virtio_uml_device*) ;
 int put_device (TYPE_3__*) ;
 int register_virtio_device (TYPE_2__*) ;
 int vhost_user_init (struct virtio_uml_device*) ;
 int virtio_uml_config_ops ;
 int virtio_uml_release_dev ;

__attribute__((used)) static int virtio_uml_probe(struct platform_device *pdev)
{
 struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
 struct virtio_uml_device *vu_dev;
 int rc;

 if (!pdata)
  return -EINVAL;

 vu_dev = devm_kzalloc(&pdev->dev, sizeof(*vu_dev), GFP_KERNEL);
 if (!vu_dev)
  return -ENOMEM;

 vu_dev->vdev.dev.parent = &pdev->dev;
 vu_dev->vdev.dev.release = virtio_uml_release_dev;
 vu_dev->vdev.config = &virtio_uml_config_ops;
 vu_dev->vdev.id.device = pdata->virtio_device_id;
 vu_dev->vdev.id.vendor = VIRTIO_DEV_ANY_ID;
 vu_dev->pdev = pdev;
 vu_dev->req_fd = -1;

 do {
  rc = os_connect_socket(pdata->socket_path);
 } while (rc == -EINTR);
 if (rc < 0)
  return rc;
 vu_dev->sock = rc;

 rc = vhost_user_init(vu_dev);
 if (rc)
  goto error_init;

 platform_set_drvdata(pdev, vu_dev);

 rc = register_virtio_device(&vu_dev->vdev);
 if (rc)
  put_device(&vu_dev->vdev.dev);
 return rc;

error_init:
 os_close_file(vu_dev->sock);
 return rc;
}
