
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (char const**) ;
 int kfree_const (char const*) ;

__attribute__((used)) static void plt_clk_free_parent_names_loop(const char **parent_names,
        unsigned int i)
{
 while (i--)
  kfree_const(parent_names[i]);
 kfree(parent_names);
}
