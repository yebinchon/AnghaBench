
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoetgt {struct aoeif* ifp; struct aoeif* ifs; } ;
struct aoeif {int * nd; } ;


 size_t NAOEIFS ;

__attribute__((used)) static struct aoeif *
ifrotate(struct aoetgt *t)
{
 struct aoeif *ifp;

 ifp = t->ifp;
 ifp++;
 if (ifp >= &t->ifs[NAOEIFS] || ifp->nd == ((void*)0))
  ifp = t->ifs;
 if (ifp->nd == ((void*)0))
  return ((void*)0);
 return t->ifp = ifp;
}
