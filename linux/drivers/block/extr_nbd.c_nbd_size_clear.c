
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nbd_device {int disk; TYPE_1__* config; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {scalar_t__ bytesize; } ;


 int KOBJ_CHANGE ;
 int kobject_uevent (int *,int ) ;
 TYPE_2__* nbd_to_dev (struct nbd_device*) ;
 int set_capacity (int ,int ) ;

__attribute__((used)) static void nbd_size_clear(struct nbd_device *nbd)
{
 if (nbd->config->bytesize) {
  set_capacity(nbd->disk, 0);
  kobject_uevent(&nbd_to_dev(nbd)->kobj, KOBJ_CHANGE);
 }
}
