
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_clk_reg_dump {unsigned long offset; } ;


 int GFP_KERNEL ;
 struct samsung_clk_reg_dump* kcalloc (unsigned long,int,int ) ;

struct samsung_clk_reg_dump *samsung_clk_alloc_reg_dump(
      const unsigned long *rdump,
      unsigned long nr_rdump)
{
 struct samsung_clk_reg_dump *rd;
 unsigned int i;

 rd = kcalloc(nr_rdump, sizeof(*rd), GFP_KERNEL);
 if (!rd)
  return ((void*)0);

 for (i = 0; i < nr_rdump; ++i)
  rd[i].offset = rdump[i];

 return rd;
}
