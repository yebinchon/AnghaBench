
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvmppc_slb {int base_page_size; } ;





__attribute__((used)) static int decode_pagesize(struct kvmppc_slb *slbe, u64 r)
{
 switch (slbe->base_page_size) {
 case 128:
  if ((r & 0xf000) == 0x1000)
   return 128;
  break;
 case 129:
  if ((r & 0xff000) == 0)
   return 129;
  break;
 }
 return -1;
}
