
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 char** clk_src_names ;

__attribute__((used)) static void lpc18xx_fill_parent_names(const char **parent, u32 *id, int size)
{
 int i;

 for (i = 0; i < size; i++)
  parent[i] = clk_src_names[id[i]];
}
