
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cci_init () ;

bool cci_probed(void)
{
 return cci_init() == 0;
}
