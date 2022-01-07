
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int disk; } ;
struct drbd_device {TYPE_2__ state; int flags; TYPE_1__* ldev; } ;
typedef enum drbd_io_error_p { ____Placeholder_drbd_io_error_p } drbd_io_error_p ;
typedef enum drbd_force_detach_flags { ____Placeholder_drbd_force_detach_flags } drbd_force_detach_flags ;
struct TYPE_6__ {int on_io_error; } ;
struct TYPE_4__ {int disk_conf; } ;


 int CS_HARD ;
 int DRBD_FORCE_DETACH ;
 int DRBD_READ_ERROR ;
 int DRBD_WRITE_ERROR ;
 int D_FAILED ;
 int D_INCONSISTENT ;



 int FORCE_DETACH ;
 int WAS_IO_ERROR ;
 int WAS_READ_ERROR ;
 int _NS (struct drbd_device*,int ,int ) ;
 int __ratelimit (int *) ;
 int _drbd_set_state (int ,int ,int *) ;
 int disk ;
 int drbd_err (struct drbd_device*,char*,char const*) ;
 int drbd_ratelimit_state ;
 TYPE_3__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void __drbd_chk_io_error_(struct drbd_device *device,
  enum drbd_force_detach_flags df,
  const char *where)
{
 enum drbd_io_error_p ep;

 rcu_read_lock();
 ep = rcu_dereference(device->ldev->disk_conf)->on_io_error;
 rcu_read_unlock();
 switch (ep) {
 case 128:
  if (df == DRBD_READ_ERROR || df == DRBD_WRITE_ERROR) {
   if (__ratelimit(&drbd_ratelimit_state))
    drbd_err(device, "Local IO failed in %s.\n", where);
   if (device->state.disk > D_INCONSISTENT)
    _drbd_set_state(_NS(device, disk, D_INCONSISTENT), CS_HARD, ((void*)0));
   break;
  }

 case 129:
 case 130:
  set_bit(WAS_IO_ERROR, &device->flags);
  if (df == DRBD_READ_ERROR)
   set_bit(WAS_READ_ERROR, &device->flags);
  if (df == DRBD_FORCE_DETACH)
   set_bit(FORCE_DETACH, &device->flags);
  if (device->state.disk > D_FAILED) {
   _drbd_set_state(_NS(device, disk, D_FAILED), CS_HARD, ((void*)0));
   drbd_err(device,
    "Local IO failed in %s. Detaching...\n", where);
  }
  break;
 }
}
