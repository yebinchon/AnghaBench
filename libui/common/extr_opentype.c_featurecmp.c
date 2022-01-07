
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feature {scalar_t__ a; scalar_t__ b; scalar_t__ c; scalar_t__ d; } ;


 int intdiff (scalar_t__,scalar_t__) ;

__attribute__((used)) static int featurecmp(const void *a, const void *b)
{
 const struct feature *f = (const struct feature *) a;
 const struct feature *g = (const struct feature *) b;

 if (f->a != g->a)
  return intdiff(f->a, g->a);
 if (f->b != g->b)
  return intdiff(f->b, g->b);
 if (f->c != g->c)
  return intdiff(f->c, g->c);
 return intdiff(f->d, g->d);
}
