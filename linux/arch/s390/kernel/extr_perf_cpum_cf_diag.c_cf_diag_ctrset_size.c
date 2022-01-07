
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumf_ctr_info {int cfvn; int csvn; } ;
typedef enum cpumf_ctr_set { ____Placeholder_cpumf_ctr_set } cpumf_ctr_set ;
__attribute__((used)) static size_t cf_diag_ctrset_size(enum cpumf_ctr_set ctrset,
     struct cpumf_ctr_info *info)
{
 size_t ctrset_size = 0;

 switch (ctrset) {
 case 133:
  if (info->cfvn >= 1)
   ctrset_size = 6;
  break;
 case 128:
  if (info->cfvn == 1)
   ctrset_size = 6;
  else if (info->cfvn >= 3)
   ctrset_size = 2;
  break;
 case 132:
  if (info->csvn >= 1 && info->csvn <= 5)
   ctrset_size = 16;
  else if (info->csvn == 6)
   ctrset_size = 20;
  break;
 case 131:
  if (info->csvn == 1)
   ctrset_size = 32;
  else if (info->csvn == 2)
   ctrset_size = 48;
  else if (info->csvn >= 3 && info->csvn <= 5)
   ctrset_size = 128;
  else if (info->csvn == 6)
   ctrset_size = 160;
  break;
 case 129:
  if (info->csvn > 3)
   ctrset_size = 48;
  break;
 case 130:
  break;
 }

 return ctrset_size;
}
