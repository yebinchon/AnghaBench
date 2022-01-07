
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {TYPE_1__* rbd_client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ceph_entity_addr {int nonce; int in_addr; } ;
typedef int ssize_t ;
struct TYPE_2__ {int client; } ;


 struct ceph_entity_addr* ceph_client_addr (int ) ;
 struct rbd_device* dev_to_rbd_dev (struct device*) ;
 int le32_to_cpu (int ) ;
 int sprintf (char*,char*,int *,int) ;

__attribute__((used)) static ssize_t rbd_client_addr_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct rbd_device *rbd_dev = dev_to_rbd_dev(dev);
 struct ceph_entity_addr *client_addr =
     ceph_client_addr(rbd_dev->rbd_client->client);

 return sprintf(buf, "%pISpc/%u\n", &client_addr->in_addr,
         le32_to_cpu(client_addr->nonce));
}
