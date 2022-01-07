
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int * cpuregs; int reg_type; } ;


 int _mpic_read (int ,int *,unsigned int) ;
 unsigned int mpic_processor_id (struct mpic*) ;

__attribute__((used)) static inline u32 _mpic_cpu_read(struct mpic *mpic, unsigned int reg)
{
 unsigned int cpu = mpic_processor_id(mpic);

 return _mpic_read(mpic->reg_type, &mpic->cpuregs[cpu], reg);
}
