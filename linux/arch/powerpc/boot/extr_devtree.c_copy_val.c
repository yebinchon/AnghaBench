
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAX_ADDR_CELLS ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void copy_val(u32 *dest, u32 *src, int naddr)
{
 int pad = MAX_ADDR_CELLS - naddr;

 memset(dest, 0, pad * 4);
 memcpy(dest + pad, src, naddr * 4);
}
