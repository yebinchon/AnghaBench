
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_interface {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int pll_vals_12MHz ;
 int s3c_plltab_register (int ,int ) ;

__attribute__((used)) static int s3c2410_plls_add(struct device *dev, struct subsys_interface *sif)
{
 return s3c_plltab_register(pll_vals_12MHz, ARRAY_SIZE(pll_vals_12MHz));
}
