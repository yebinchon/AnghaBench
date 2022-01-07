
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENOSPC ;
 int closid_free_map ;
 int ffs (int) ;

__attribute__((used)) static int closid_alloc(void)
{
 u32 closid = ffs(closid_free_map);

 if (closid == 0)
  return -ENOSPC;
 closid--;
 closid_free_map &= ~(1 << closid);

 return closid;
}
