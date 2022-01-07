
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u32 ;
typedef int u16 ;
typedef int IADEV ;


 int CFG_AND (int ) ;
 int IAREAD ;
 int NVDI ;
 int NVRAM_CLKIN (int) ;
 int NVRAM_CLR_CE ;
 int NVRAM_CMD (int) ;

__attribute__((used)) static u16 ia_eeprom_get (IADEV *iadev, u32 addr)
{
 u_short val;
        u32 t;
 int i;




 NVRAM_CMD(IAREAD + addr);




 val = 0;
 for (i=15; i>=0; i--) {
  NVRAM_CLKIN(t);
  val |= (t << i);
 }
 NVRAM_CLR_CE;
 CFG_AND(~NVDI);
 return val;
}
