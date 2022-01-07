
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* stfle_fac_list; } ;


 int ARRAY_SIZE (unsigned long*) ;
 int BITS_PER_LONG ;
 TYPE_1__ S390_lowcore ;
 unsigned long* als ;
 int sclp_early_printk (char*) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int u16_to_decimal (char*,int) ;

void print_missing_facilities(void)
{
 static char als_str[80] = "Missing facilities: ";
 unsigned long val;
 char val_str[6];
 int i, j, first;

 first = 1;
 for (i = 0; i < ARRAY_SIZE(als); i++) {
  val = ~S390_lowcore.stfle_fac_list[i] & als[i];
  for (j = 0; j < BITS_PER_LONG; j++) {
   if (!(val & (1UL << (BITS_PER_LONG - 1 - j))))
    continue;
   if (!first)
    strcat(als_str, ",");





   if (strlen(als_str) > 70) {
    strcat(als_str, "\n");
    sclp_early_printk(als_str);
    *als_str = '\0';
   }
   u16_to_decimal(val_str, i * BITS_PER_LONG + j);
   strcat(als_str, val_str);
   first = 0;
  }
 }
 strcat(als_str, "\n");
 sclp_early_printk(als_str);
}
