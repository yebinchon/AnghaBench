
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int tmregs; int reg_type; } ;


 unsigned int MPIC_INFO (int ) ;
 int TIMER_VECTOR_PRI ;
 int _mpic_write (int ,int *,unsigned int,int ) ;
 unsigned int mpic_tm_offset (struct mpic*,unsigned int) ;

__attribute__((used)) static inline void _mpic_tm_write(struct mpic *mpic, unsigned int tm, u32 value)
{
 unsigned int offset = mpic_tm_offset(mpic, tm) +
         MPIC_INFO(TIMER_VECTOR_PRI);

 _mpic_write(mpic->reg_type, &mpic->tmregs, offset, value);
}
