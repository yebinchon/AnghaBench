
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_device {TYPE_2__* rbd_client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {int fsid; } ;


 struct rbd_device* dev_to_rbd_dev (struct device*) ;
 int sprintf (char*,char*,int *) ;

__attribute__((used)) static ssize_t rbd_cluster_fsid_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct rbd_device *rbd_dev = dev_to_rbd_dev(dev);

 return sprintf(buf, "%pU\n", &rbd_dev->rbd_client->client->fsid);
}
