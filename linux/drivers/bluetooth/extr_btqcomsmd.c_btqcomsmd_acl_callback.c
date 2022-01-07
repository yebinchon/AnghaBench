
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rpmsg_device {int dummy; } ;
struct btqcomsmd {TYPE_2__* hdev; } ;
struct TYPE_3__ {int byte_rx; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;


 int HCI_ACLDATA_PKT ;
 int btqcomsmd_recv (TYPE_2__*,int ,void*,int) ;

__attribute__((used)) static int btqcomsmd_acl_callback(struct rpmsg_device *rpdev, void *data,
      int count, void *priv, u32 addr)
{
 struct btqcomsmd *btq = priv;

 btq->hdev->stat.byte_rx += count;
 return btqcomsmd_recv(btq->hdev, HCI_ACLDATA_PKT, data, count);
}
