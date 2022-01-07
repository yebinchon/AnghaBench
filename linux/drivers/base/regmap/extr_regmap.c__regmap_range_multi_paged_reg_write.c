
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_range_node {int dummy; } ;
struct regmap {int dummy; } ;
struct reg_sequence {unsigned int reg; scalar_t__ delay_us; } ;


 struct regmap_range_node* _regmap_range_lookup (struct regmap*,unsigned int) ;
 int _regmap_raw_multi_reg_write (struct regmap*,struct reg_sequence*,int) ;
 unsigned int _regmap_register_page (struct regmap*,unsigned int,struct regmap_range_node*) ;
 int _regmap_select_page (struct regmap*,unsigned int*,struct regmap_range_node*,int) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static int _regmap_range_multi_paged_reg_write(struct regmap *map,
            struct reg_sequence *regs,
            size_t num_regs)
{
 int ret;
 int i, n;
 struct reg_sequence *base;
 unsigned int this_page = 0;
 unsigned int page_change = 0;






 base = regs;
 for (i = 0, n = 0; i < num_regs; i++, n++) {
  unsigned int reg = regs[i].reg;
  struct regmap_range_node *range;

  range = _regmap_range_lookup(map, reg);
  if (range) {
   unsigned int win_page = _regmap_register_page(map, reg,
              range);

   if (i == 0)
    this_page = win_page;
   if (win_page != this_page) {
    this_page = win_page;
    page_change = 1;
   }
  }






  if (page_change || regs[i].delay_us) {







    if (regs[i].delay_us && i == 0)
     n = 1;

    ret = _regmap_raw_multi_reg_write(map, base, n);
    if (ret != 0)
     return ret;

    if (regs[i].delay_us)
     udelay(regs[i].delay_us);

    base += n;
    n = 0;

    if (page_change) {
     ret = _regmap_select_page(map,
          &base[n].reg,
          range, 1);
     if (ret != 0)
      return ret;

     page_change = 0;
    }

  }

 }
 if (n > 0)
  return _regmap_raw_multi_reg_write(map, base, n);
 return 0;
}
