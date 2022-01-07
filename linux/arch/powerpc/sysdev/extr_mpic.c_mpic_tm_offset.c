
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic {int dummy; } ;


 unsigned int MPIC_INFO (int ) ;
 unsigned int MPIC_TIMER_GROUP_STRIDE ;
 int TIMER_STRIDE ;

__attribute__((used)) static inline unsigned int mpic_tm_offset(struct mpic *mpic, unsigned int tm)
{
 return (tm >> 2) * MPIC_TIMER_GROUP_STRIDE +
        (tm & 3) * MPIC_INFO(TIMER_STRIDE);
}
