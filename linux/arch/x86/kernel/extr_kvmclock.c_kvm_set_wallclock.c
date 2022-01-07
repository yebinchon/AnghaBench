
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int kvm_set_wallclock(const struct timespec64 *now)
{
 return -ENODEV;
}
