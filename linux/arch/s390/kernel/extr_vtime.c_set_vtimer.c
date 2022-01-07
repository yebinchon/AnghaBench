
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ last_update_timer; int system_timer; } ;


 TYPE_1__ S390_lowcore ;

__attribute__((used)) static inline void set_vtimer(u64 expires)
{
 u64 timer;

 asm volatile(
  "	stpt	%0\n"
  "	spt	%1"
  : "=Q" (timer) : "Q" (expires));
 S390_lowcore.system_timer += S390_lowcore.last_update_timer - timer;
 S390_lowcore.last_update_timer = expires;
}
