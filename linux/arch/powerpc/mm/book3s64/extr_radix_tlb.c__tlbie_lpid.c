
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __tlbie_lpid (unsigned long,int const) ;
 int fixup_tlbie_lpid (unsigned long) ;

__attribute__((used)) static inline void _tlbie_lpid(unsigned long lpid, unsigned long ric)
{
 asm volatile("ptesync": : :"memory");






 switch (ric) {
 case 128:
  __tlbie_lpid(lpid, 128);
  fixup_tlbie_lpid(lpid);
  break;
 case 129:
  __tlbie_lpid(lpid, 129);
  break;
 case 130:
 default:
  __tlbie_lpid(lpid, 130);
  fixup_tlbie_lpid(lpid);
 }
 asm volatile("eieio; tlbsync; ptesync": : :"memory");
}
