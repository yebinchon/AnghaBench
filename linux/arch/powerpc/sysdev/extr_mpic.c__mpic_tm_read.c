
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int tmregs; int reg_type; } ;


 unsigned int MPIC_INFO (int ) ;
 int TIMER_VECTOR_PRI ;
 int _mpic_read (int ,int *,unsigned int) ;
 unsigned int mpic_tm_offset (struct mpic*,unsigned int) ;

__attribute__((used)) static inline u32 _mpic_tm_read(struct mpic *mpic, unsigned int tm)
{
 unsigned int offset = mpic_tm_offset(mpic, tm) +
         MPIC_INFO(TIMER_VECTOR_PRI);

 return _mpic_read(mpic->reg_type, &mpic->tmregs, offset);
}
