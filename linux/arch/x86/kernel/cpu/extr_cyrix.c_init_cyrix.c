
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {char* x86_model_id; unsigned char x86_model; unsigned char x86_stepping; int x86_cache_size; int cpuid_level; } ;


 int CX86_CCR7 ;
 char** Cx486D_name ;
 char** Cx486S_name ;
 char** Cx486_name ;
 char* Cx86_cb ;
 unsigned char Cx86_dir0_msb ;
 int * Cx86_model ;
 int PCI_DEVICE_ID ;
 int PCI_DEVICE_ID_CYRIX_5510 ;
 int PCI_DEVICE_ID_CYRIX_5520 ;
 int PCI_VENDOR_ID ;
 int PCI_VENDOR_ID_CYRIX ;
 int X86_BUG_COMA ;
 int X86_FEATURE_CXMMX ;
 int X86_FEATURE_CYRIX_ARR ;
 int X86_FEATURE_FPU ;
 int boot_cpu_has (int ) ;
 int check_cx686_slop (struct cpuinfo_x86*) ;
 int clear_cpu_cap (struct cpuinfo_x86*,int) ;
 char* cyrix_model_mult1 ;
 char* cyrix_model_mult2 ;
 int do_cyrix_devid (unsigned char*,unsigned char*) ;
 int geode_configure () ;
 int getCx86 (int ) ;
 int isa_dma_bridge_buggy ;
 int mark_tsc_unstable (char*) ;
 int pr_info (char*) ;
 int read_pci_config_16 (int ,int ,int,int ) ;
 int setCx86 (int ,int) ;
 int set_cpu_bug (struct cpuinfo_x86*,int ) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,int ) ;
 scalar_t__ test_cpu_cap (struct cpuinfo_x86*,int) ;

__attribute__((used)) static void init_cyrix(struct cpuinfo_x86 *c)
{
 unsigned char dir0, dir0_msn, dir0_lsn, dir1 = 0;
 char *buf = c->x86_model_id;
 const char *p = ((void*)0);





 clear_cpu_cap(c, 0*32+31);


 if (test_cpu_cap(c, 1*32+24)) {
  clear_cpu_cap(c, 1*32+24);
  set_cpu_cap(c, X86_FEATURE_CXMMX);
 }

 do_cyrix_devid(&dir0, &dir1);

 check_cx686_slop(c);

 Cx86_dir0_msb = dir0_msn = dir0 >> 4;
 dir0_lsn = dir0 & 0xf;


 c->x86_model = (dir1 >> 4) + 1;
 c->x86_stepping = dir1 & 0xf;







 switch (dir0_msn) {
  unsigned char tmp;

 case 0:
  p = Cx486_name[dir0_lsn & 7];
  break;

 case 1:
  p = (dir0_lsn & 8) ? Cx486D_name[dir0_lsn & 5]
   : Cx486S_name[dir0_lsn & 3];
  break;

 case 2:
  Cx86_cb[2] = cyrix_model_mult1[dir0_lsn & 5];
  p = Cx86_cb+2;
  break;

 case 3:
  Cx86_cb[1] = ' ';
  Cx86_cb[2] = cyrix_model_mult1[dir0_lsn & 5];
  if (dir1 > 0x21) {
   Cx86_cb[0] = 'L';
   p = Cx86_cb;
   (c->x86_model)++;
  } else
   p = Cx86_cb+1;

  set_cpu_cap(c, X86_FEATURE_CYRIX_ARR);

  set_cpu_bug(c, X86_BUG_COMA);
  break;

 case 4:
 case 11:
  c->x86_cache_size = 16;


  if (c->cpuid_level == 2) {

   setCx86(CX86_CCR7, getCx86(CX86_CCR7) | 1);







   if ((0x30 <= dir1 && dir1 <= 0x6f) ||
     (0x80 <= dir1 && dir1 <= 0x8f))
    geode_configure();
   return;
  } else {
   Cx86_cb[2] = (dir0_lsn & 1) ? '3' : '4';
   p = Cx86_cb+2;
   c->x86_model = (dir1 & 0x20) ? 1 : 2;
  }
  break;

 case 5:
  if (dir1 > 7) {
   dir0_msn++;

   setCx86(CX86_CCR7, getCx86(CX86_CCR7)|1);
  } else {

   set_cpu_bug(c, X86_BUG_COMA);
  }
  tmp = (!(dir0_lsn & 7) || dir0_lsn & 1) ? 2 : 0;
  Cx86_cb[tmp] = cyrix_model_mult2[dir0_lsn & 7];
  p = Cx86_cb+tmp;
  if (((dir1 & 0x0f) > 4) || ((dir1 & 0xf0) == 0x20))
   (c->x86_model)++;

  set_cpu_cap(c, X86_FEATURE_CYRIX_ARR);
  break;

 case 0xf:
  switch (dir0_lsn) {
  case 0xd:
   dir0_msn = 0;
   p = Cx486_name[!!boot_cpu_has(X86_FEATURE_FPU)];
   break;

  case 0xe:
   dir0_msn = 0;
   p = Cx486S_name[0];
   break;
  }
  break;

 default:
  dir0_msn = 7;
  break;
 }
 strcpy(buf, Cx86_model[dir0_msn & 7]);
 if (p)
  strcat(buf, p);
 return;
}
