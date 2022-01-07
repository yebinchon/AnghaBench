
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_sti_priv {scalar_t__ base; } ;


 unsigned long ioread32 (scalar_t__) ;

__attribute__((used)) static inline unsigned long em_sti_read(struct em_sti_priv *p, int offs)
{
 return ioread32(p->base + offs);
}
