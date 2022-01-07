
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt77252_dev {int dummy; } ;


 int SAR_REG_CDC ;
 int SAR_REG_ICC ;
 int SAR_REG_VPEC ;
 int readl (int ) ;

__attribute__((used)) static void
idt77252_collect_stat(struct idt77252_dev *card)
{
 (void) readl(SAR_REG_CDC);
 (void) readl(SAR_REG_VPEC);
 (void) readl(SAR_REG_ICC);

}
