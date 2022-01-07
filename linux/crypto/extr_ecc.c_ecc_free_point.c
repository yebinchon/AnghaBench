
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecc_point {struct ecc_point* y; struct ecc_point* x; } ;


 int kzfree (struct ecc_point*) ;

__attribute__((used)) static void ecc_free_point(struct ecc_point *p)
{
 if (!p)
  return;

 kzfree(p->x);
 kzfree(p->y);
 kzfree(p);
}
