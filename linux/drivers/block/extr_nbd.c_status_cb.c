
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nbd_device {int dummy; } ;


 int populate_nbd_status (struct nbd_device*,struct sk_buff*) ;

__attribute__((used)) static int status_cb(int id, void *ptr, void *data)
{
 struct nbd_device *nbd = ptr;
 return populate_nbd_status(nbd, (struct sk_buff *)data);
}
