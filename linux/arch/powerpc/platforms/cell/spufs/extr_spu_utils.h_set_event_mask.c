
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPU_WrEventMask ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void set_event_mask(void)
{
 unsigned int event_mask = 0;






 spu_writech(SPU_WrEventMask, event_mask);
}
