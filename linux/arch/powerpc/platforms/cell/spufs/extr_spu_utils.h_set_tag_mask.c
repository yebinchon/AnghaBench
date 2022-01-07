
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFC_WrTagMask ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void set_tag_mask(void)
{
 unsigned int tag_mask = 1;






 spu_writech(MFC_WrTagMask, tag_mask);
}
