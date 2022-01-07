
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __stsi (void*,int,int,int,int*) ;

int stsi(void *sysinfo, int fc, int sel1, int sel2)
{
 int lvl, rc;

 rc = __stsi(sysinfo, fc, sel1, sel2, &lvl);
 if (rc)
  return rc;
 return fc ? 0 : lvl;
}
