
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int con_id; } ;


 int kfree (struct clk*) ;
 int kfree_const (int ) ;

__attribute__((used)) static void free_clk(struct clk *clk)
{
 kfree_const(clk->con_id);
 kfree(clk);
}
