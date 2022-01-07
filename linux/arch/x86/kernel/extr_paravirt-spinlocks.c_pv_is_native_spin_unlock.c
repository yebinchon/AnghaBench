
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ func; } ;
struct TYPE_5__ {TYPE_1__ queued_spin_unlock; } ;
struct TYPE_6__ {TYPE_2__ lock; } ;


 scalar_t__ __raw_callee_save___native_queued_spin_unlock ;
 TYPE_3__ pv_ops ;

bool pv_is_native_spin_unlock(void)
{
 return pv_ops.lock.queued_spin_unlock.func ==
  __raw_callee_save___native_queued_spin_unlock;
}
