
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_sti_priv {scalar_t__ base; } ;


 int iowrite32 (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void em_sti_write(struct em_sti_priv *p, int offs,
    unsigned long value)
{
 iowrite32(value, p->base + offs);
}
