
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct clk_hw {int dummy; } ;


 int ENOENT ;
 struct clk_hw* ERR_PTR (int ) ;

__attribute__((used)) static inline struct clk_hw *
of_clk_get_hw_from_clkspec(struct of_phandle_args *clkspec)
{
 return ERR_PTR(-ENOENT);
}
