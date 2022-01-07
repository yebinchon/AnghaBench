
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoetgt {int taint; } ;


 int MAX_TAINT ;

__attribute__((used)) static void
scorn(struct aoetgt *t)
{
 int n;

 n = t->taint++;
 t->taint += t->taint * 2;
 if (n > t->taint)
  t->taint = n;
 if (t->taint > MAX_TAINT)
  t->taint = MAX_TAINT;
}
