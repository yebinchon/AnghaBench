
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHYS_OFFSET ;
 int VA_BITS ;
 int VMCOREINFO_NUMBER (int ) ;
 int kaslr_offset () ;
 int kimage_voffset ;
 int vmcoreinfo_append_str (char*,int ) ;

void arch_crash_save_vmcoreinfo(void)
{
 VMCOREINFO_NUMBER(VA_BITS);

 vmcoreinfo_append_str("NUMBER(kimage_voffset)=0x%llx\n",
      kimage_voffset);
 vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
      PHYS_OFFSET);
 vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
}
