
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CCTL0_MCO2 ;
 int CCTL0_MCO4 ;
 int dt_fixup_memory (int,int ) ;
 void* finddevice (char*) ;
 int ibm_akebono_memsize ;
 scalar_t__ mac_addr ;
 int mfdcrx (int ) ;
 int mtdcrx (int ,int) ;
 int setprop (void*,char*,int *,int) ;

__attribute__((used)) static void ibm_akebono_fixups(void)
{
 void *emac;
 u32 reg;

 dt_fixup_memory(0x0ULL, ibm_akebono_memsize);


 mtdcrx(CCTL0_MCO4, 0x1);


 reg = mfdcrx(CCTL0_MCO2) & ~0x2;
 mtdcrx(CCTL0_MCO2, reg);


 emac = finddevice("/plb/opb/ethernet");
 if (emac > 0) {
  if (mac_addr)
   setprop(emac, "local-mac-address",
    ((u8 *) &mac_addr) + 2 , 6);
 }
}
