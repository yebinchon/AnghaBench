
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int contents; scalar_t__ seg_not_present; int seg_32bit; } ;


 scalar_t__ LDT_empty (struct user_desc const*) ;
 scalar_t__ LDT_zero (struct user_desc const*) ;

__attribute__((used)) static bool tls_desc_okay(const struct user_desc *info)
{
 if (LDT_empty(info) || LDT_zero(info))
  return 1;





 if (!info->seg_32bit)
  return 0;


 if (info->contents > 1)
  return 0;
 if (info->seg_not_present)
  return 0;

 return 1;
}
