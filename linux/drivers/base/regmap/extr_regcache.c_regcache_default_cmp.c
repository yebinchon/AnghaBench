
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_default {int reg; } ;



__attribute__((used)) static int regcache_default_cmp(const void *a, const void *b)
{
 const struct reg_default *_a = a;
 const struct reg_default *_b = b;

 return _a->reg - _b->reg;
}
