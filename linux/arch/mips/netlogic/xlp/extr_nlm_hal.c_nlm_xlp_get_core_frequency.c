
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_2__ {unsigned long long sysbase; } ;


 int SYS_CORE_DFS_DIV_VALUE ;
 int SYS_POWER_ON_RESET_CFG ;
 int do_div (unsigned long long,unsigned int) ;
 TYPE_1__* nlm_get_node (int) ;
 unsigned int nlm_read_sys_reg (unsigned long long,int ) ;

__attribute__((used)) static unsigned int nlm_xlp_get_core_frequency(int node, int core)
{
 unsigned int pll_divf, pll_divr, dfs_div, ext_div;
 unsigned int rstval, dfsval, denom;
 uint64_t num, sysbase;

 sysbase = nlm_get_node(node)->sysbase;
 rstval = nlm_read_sys_reg(sysbase, SYS_POWER_ON_RESET_CFG);
 dfsval = nlm_read_sys_reg(sysbase, SYS_CORE_DFS_DIV_VALUE);
 pll_divf = ((rstval >> 10) & 0x7f) + 1;
 pll_divr = ((rstval >> 8) & 0x3) + 1;
 ext_div = ((rstval >> 30) & 0x3) + 1;
 dfs_div = ((dfsval >> (core * 4)) & 0xf) + 1;

 num = 800000000ULL * pll_divf;
 denom = 3 * pll_divr * ext_div * dfs_div;
 do_div(num, denom);

 return (unsigned int)num;
}
