
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int portal_t ;


 int * GetMemory (int) ;
 scalar_t__ MemorySize (int *) ;
 scalar_t__ c_active_portals ;
 scalar_t__ c_peak_portals ;
 int c_portalmemory ;
 int memset (int *,int ,int) ;
 int numthreads ;

portal_t *AllocPortal (void)
{
 portal_t *p;

 p = GetMemory(sizeof(portal_t));
 memset (p, 0, sizeof(portal_t));

 if (numthreads == 1)
 {
  c_active_portals++;
  if (c_active_portals > c_peak_portals)
  {
   c_peak_portals = c_active_portals;
  }
  c_portalmemory += MemorySize(p);
 }




 return p;
}
