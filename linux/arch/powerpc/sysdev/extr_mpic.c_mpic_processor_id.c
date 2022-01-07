
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic {int flags; } ;


 int MPIC_SECONDARY ;
 unsigned int hard_smp_processor_id () ;

__attribute__((used)) static inline unsigned int mpic_processor_id(struct mpic *mpic)
{
 unsigned int cpu = 0;

 if (!(mpic->flags & MPIC_SECONDARY))
  cpu = hard_smp_processor_id();

 return cpu;
}
