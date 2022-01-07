
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct net_device {int dummy; } ;
struct aoetgt {struct aoeif* ifs; } ;
struct aoeif {struct net_device* nd; } ;


 int NAOEIFS ;
 int dev_put (struct net_device*) ;
 int memmove (struct aoeif*,struct aoeif*,int) ;

__attribute__((used)) static void
ejectif(struct aoetgt *t, struct aoeif *ifp)
{
 struct aoeif *e;
 struct net_device *nd;
 ulong n;

 nd = ifp->nd;
 e = t->ifs + NAOEIFS - 1;
 n = (e - ifp) * sizeof *ifp;
 memmove(ifp, ifp+1, n);
 e->nd = ((void*)0);
 dev_put(nd);
}
