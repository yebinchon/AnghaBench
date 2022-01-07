
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dt_xlate_reg (void*,int,unsigned long*,int *) ;
 int getprop (void*,char*,void**,int) ;

int dt_get_virtual_reg(void *node, void **addr, int nres)
{
 unsigned long xaddr;
 int n;

 n = getprop(node, "virtual-reg", addr, nres * 4);
 if (n > 0)
  return n / 4;

 for (n = 0; n < nres; n++) {
  if (!dt_xlate_reg(node, n, &xaddr, ((void*)0)))
   break;

  addr[n] = (void *)xaddr;
 }

 return n;
}
