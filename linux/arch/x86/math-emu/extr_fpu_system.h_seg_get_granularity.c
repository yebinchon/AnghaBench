
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_struct {scalar_t__ g; } ;



__attribute__((used)) static inline unsigned long seg_get_granularity(struct desc_struct *d)
{
 return d->g ? 4096 : 1;
}
