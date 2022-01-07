
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em_sti_priv {TYPE_1__* pdev; int clk; } ;
struct TYPE_2__ {int dev; } ;


 int STI_CONTROL ;
 int STI_INTENCLR ;
 int STI_INTFFCLR ;
 int STI_SET_H ;
 int STI_SET_L ;
 int clk_enable (int ) ;
 int dev_err (int *,char*) ;
 int em_sti_write (struct em_sti_priv*,int ,int) ;

__attribute__((used)) static int em_sti_enable(struct em_sti_priv *p)
{
 int ret;


 ret = clk_enable(p->clk);
 if (ret) {
  dev_err(&p->pdev->dev, "cannot enable clock\n");
  return ret;
 }


 em_sti_write(p, STI_SET_H, 0x40000000);
 em_sti_write(p, STI_SET_L, 0x00000000);


 em_sti_write(p, STI_INTENCLR, 3);
 em_sti_write(p, STI_INTFFCLR, 3);


 em_sti_write(p, STI_CONTROL, 1);

 return 0;
}
