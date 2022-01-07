
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LUB_MISC_RD ;

__attribute__((used)) static int lubbock_udc_is_connected(void)
{
 return (LUB_MISC_RD & (1 << 9)) == 0;
}
