
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int dummy; } ;


 int ENODEV ;

int eeh_pe_configure(struct eeh_pe *pe)
{
 int ret = 0;


 if (!pe)
  return -ENODEV;

 return ret;
}
