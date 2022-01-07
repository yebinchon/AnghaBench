
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int dummy; } ;


 int DPRINTK (char*) ;
 int sram_test_pass (struct lanai_dev const*,int) ;

__attribute__((used)) static int sram_test_and_clear(const struct lanai_dev *lanai)
{
 DPRINTK("clearing SRAM\n");
 return sram_test_pass(lanai, 0x0000);
}
