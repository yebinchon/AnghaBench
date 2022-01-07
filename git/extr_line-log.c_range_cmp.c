
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {scalar_t__ start; } ;



__attribute__((used)) static int range_cmp(const void *_r, const void *_s)
{
 const struct range *r = _r;
 const struct range *s = _s;


 if (r->start == s->start)
  return 0;
 if (r->start < s->start)
  return -1;
 return 1;
}
