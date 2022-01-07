
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_c0_prid () ;
 int set_c0_config (int) ;

void au1x00_fixup_config_od(void)
{





 switch (read_c0_prid()) {
 case 0x00030100:
 case 0x00030201:
 case 0x00030202:
 case 0x01030200:





 case 0x02030200:
 case 0x02030201:
 case 0x02030202:
  set_c0_config(1 << 19);
  break;
 }
}
