
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ clock_comparator; unsigned long long last_update_clock; } ;


 TYPE_1__ S390_lowcore ;
 scalar_t__ clock_comparator_max ;
 int set_clock_comparator (scalar_t__) ;

__attribute__((used)) static void clock_sync_local(unsigned long long delta)
{

 if (S390_lowcore.clock_comparator != clock_comparator_max) {
  S390_lowcore.clock_comparator += delta;
  set_clock_comparator(S390_lowcore.clock_comparator);
 }

 S390_lowcore.last_update_clock += delta;
}
