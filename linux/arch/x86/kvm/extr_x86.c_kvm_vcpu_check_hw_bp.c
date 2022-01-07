
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int kvm_vcpu_check_hw_bp(unsigned long addr, u32 type, u32 dr7,
    unsigned long *db)
{
 u32 dr6 = 0;
 int i;
 u32 enable, rwlen;

 enable = dr7;
 rwlen = dr7 >> 16;
 for (i = 0; i < 4; i++, enable >>= 2, rwlen >>= 4)
  if ((enable & 3) && (rwlen & 15) == type && db[i] == addr)
   dr6 |= (1 << i);
 return dr6;
}
