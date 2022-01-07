
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int LUB_MISC_RD ;

__attribute__((used)) static int lubbock_mci_get_ro(struct device *dev)
{
 return (LUB_MISC_RD & (1 << 2)) != 0;
}
