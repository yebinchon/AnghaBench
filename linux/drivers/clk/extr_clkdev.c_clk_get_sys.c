
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 struct clk* __clk_get_sys (int *,char const*,char const*) ;

struct clk *clk_get_sys(const char *dev_id, const char *con_id)
{
 return __clk_get_sys(((void*)0), dev_id, con_id);
}
