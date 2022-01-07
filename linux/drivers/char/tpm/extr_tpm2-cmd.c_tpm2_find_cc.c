
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_chip {int nr_commands; int* cc_attrs_tbl; } ;


 int GENMASK (int,int ) ;

int tpm2_find_cc(struct tpm_chip *chip, u32 cc)
{
 int i;

 for (i = 0; i < chip->nr_commands; i++)
  if (cc == (chip->cc_attrs_tbl[i] & GENMASK(15, 0)))
   return i;

 return -1;
}
