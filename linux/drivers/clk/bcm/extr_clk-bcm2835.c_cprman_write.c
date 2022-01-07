
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_cprman {int regs; } ;


 int CM_PASSWORD ;
 int writel (int,int) ;

__attribute__((used)) static inline void cprman_write(struct bcm2835_cprman *cprman, u32 reg, u32 val)
{
 writel(CM_PASSWORD | val, cprman->regs + reg);
}
