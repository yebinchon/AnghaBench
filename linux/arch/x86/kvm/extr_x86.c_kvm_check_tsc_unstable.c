
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vclock_mode; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;


 scalar_t__ VCLOCK_HVCLOCK ;
 int check_tsc_unstable () ;
 TYPE_2__ pvclock_gtod_data ;

__attribute__((used)) static inline bool kvm_check_tsc_unstable(void)
{
 return check_tsc_unstable();
}
