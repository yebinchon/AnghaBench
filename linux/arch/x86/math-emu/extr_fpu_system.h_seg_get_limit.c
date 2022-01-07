
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_struct {unsigned long limit0; scalar_t__ limit1; } ;



__attribute__((used)) static inline unsigned long seg_get_limit(struct desc_struct *d)
{
 return ((unsigned long)d->limit1 << 16) | d->limit0;
}
