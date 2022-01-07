
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_sti_priv {int clk; } ;


 int STI_INTENCLR ;
 int clk_disable (int ) ;
 int em_sti_write (struct em_sti_priv*,int ,int) ;

__attribute__((used)) static void em_sti_disable(struct em_sti_priv *p)
{

 em_sti_write(p, STI_INTENCLR, 3);


 clk_disable(p->clk);
}
