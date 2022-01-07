
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;


 struct clk_hw* __imx_clk_scu (char const*,int *,int ,int ,int ) ;

__attribute__((used)) static inline struct clk_hw *imx_clk_scu(const char *name, u32 rsrc_id,
      u8 clk_type)
{
 return __imx_clk_scu(name, ((void*)0), 0, rsrc_id, clk_type);
}
