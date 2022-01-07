
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_struct {unsigned long base0; scalar_t__ base1; scalar_t__ base2; } ;



__attribute__((used)) static inline unsigned long seg_get_base(struct desc_struct *d)
{
 unsigned long base = (unsigned long)d->base2 << 24;

 return base | ((unsigned long)d->base1 << 16) | d->base0;
}
