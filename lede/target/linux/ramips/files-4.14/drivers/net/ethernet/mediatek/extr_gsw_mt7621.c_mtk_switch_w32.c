
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7620_gsw {unsigned int base; } ;


 int iowrite32 (int ,unsigned int) ;

void mtk_switch_w32(struct mt7620_gsw *gsw, u32 val, unsigned reg)
{
 iowrite32(val, gsw->base + reg);
}
