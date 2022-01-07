
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CP0_CERRD_CAUSES ;

 unsigned int CP0_CERRD_DATA_DBE ;
 unsigned int CP0_CERRD_DATA_SBE ;

 unsigned int CP0_CERRD_EXTERNAL ;


 unsigned int CP0_CERRD_MULTIPLE ;

 unsigned int CP0_CERRD_TAG_ADDRESS ;
 unsigned int CP0_CERRD_TAG_STATE ;
 unsigned int CP0_CERRD_TYPES ;
 int printk (char*) ;

__attribute__((used)) static inline void breakout_cerrd(unsigned int val)
{
 switch (val & CP0_CERRD_CAUSES) {
 case 129:
  printk(" load,");
  break;
 case 128:
  printk(" store,");
  break;
 case 130:
  printk(" fill/wb,");
  break;
 case 132:
  printk(" coherency,");
  break;
 case 131:
  printk(" duptags,");
  break;
 default:
  printk(" NO CAUSE,");
  break;
 }
 if (!(val & CP0_CERRD_TYPES))
  printk(" NO TYPE");
 else {
  if (val & CP0_CERRD_MULTIPLE)
   printk(" multi-err");
  if (val & CP0_CERRD_TAG_STATE)
   printk(" tag-state");
  if (val & CP0_CERRD_TAG_ADDRESS)
   printk(" tag-address");
  if (val & CP0_CERRD_DATA_SBE)
   printk(" data-SBE");
  if (val & CP0_CERRD_DATA_DBE)
   printk(" data-DBE");
  if (val & CP0_CERRD_EXTERNAL)
   printk(" external");
 }
 printk("\n");
}
