
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {int dummy; } ;


 int put_resource_in_arg0 (struct netlink_callback*,int) ;

int drbd_adm_dump_devices_done(struct netlink_callback *cb) {
 return put_resource_in_arg0(cb, 7);
}
