
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int * cpuregs; int reg_type; } ;


 int _mpic_write (int ,int *,unsigned int,int ) ;
 unsigned int mpic_processor_id (struct mpic*) ;

__attribute__((used)) static inline void _mpic_cpu_write(struct mpic *mpic, unsigned int reg, u32 value)
{
 unsigned int cpu = mpic_processor_id(mpic);

 _mpic_write(mpic->reg_type, &mpic->cpuregs[cpu], reg, value);
}
