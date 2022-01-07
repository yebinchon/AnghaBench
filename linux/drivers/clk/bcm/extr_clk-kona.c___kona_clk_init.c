
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kona_clk {int type; } ;


 int BUG () ;
 int __peri_clk_init (struct kona_clk*) ;


__attribute__((used)) static bool __kona_clk_init(struct kona_clk *bcm_clk)
{
 switch (bcm_clk->type) {
 case 128:
  return __peri_clk_init(bcm_clk);
 default:
  BUG();
 }
 return 0;
}
