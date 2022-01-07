
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u64 ;
typedef int u32 ;
typedef int u16 ;
int arch_kexec_do_relocs(int r_type, void *loc, unsigned long val,
    unsigned long addr)
{
 switch (r_type) {
 case 134:
  break;
 case 136:
  *(u8 *)loc = val;
  break;
 case 141:
  *(u16 *)loc &= 0xf000;
  *(u16 *)loc |= val & 0xfff;
  break;
 case 140:
  *(u16 *)loc = val;
  break;
 case 139:
  *(u32 *)loc &= 0xf00000ff;
  *(u32 *)loc |= (val & 0xfff) << 16;
  *(u32 *)loc |= (val & 0xff000) >> 4;
  break;
 case 138:
  *(u32 *)loc = val;
  break;
 case 137:
 case 135:
  *(u64 *)loc = val;
  break;
 case 133:
  *(u16 *)loc = (val - addr);
  break;
 case 132:
  *(u16 *)loc = (val - addr) >> 1;
  break;
 case 130:
  *(u32 *)loc = (val - addr) >> 1;
  break;
 case 131:
  *(u32 *)loc = (val - addr);
  break;
 case 129:
  *(u64 *)loc = (val - addr);
  break;
 case 128:
  *(unsigned long *) loc = val;
  break;
 default:
  return 1;
 }
 return 0;
}
