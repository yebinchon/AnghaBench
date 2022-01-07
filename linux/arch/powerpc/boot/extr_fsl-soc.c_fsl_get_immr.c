
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAX_PROP_LEN ;
 int dt_xlate_addr (void*,scalar_t__*,int,unsigned long*) ;
 void* find_node_by_devtype (int *,char*) ;
 int getprop (void*,char*,scalar_t__*,int ) ;
 int printf (char*) ;
 scalar_t__* prop_buf ;

u32 *fsl_get_immr(void)
{
 void *soc;
 unsigned long ret = 0;

 soc = find_node_by_devtype(((void*)0), "soc");
 if (soc) {
  int size;
  u32 naddr;

  size = getprop(soc, "#address-cells", prop_buf, MAX_PROP_LEN);
  if (size == 4)
   naddr = prop_buf[0];
  else
   naddr = 2;

  if (naddr != 1 && naddr != 2)
   goto err;

  size = getprop(soc, "ranges", prop_buf, MAX_PROP_LEN);

  if (size < 12)
   goto err;
  if (prop_buf[0] != 0)
   goto err;
  if (naddr == 2 && prop_buf[1] != 0)
   goto err;

  if (!dt_xlate_addr(soc, prop_buf + naddr, 8, &ret))
   ret = 0;
 }

err:
 if (!ret)
  printf("fsl_get_immr: Failed to find immr base\r\n");

 return (u32 *)ret;
}
