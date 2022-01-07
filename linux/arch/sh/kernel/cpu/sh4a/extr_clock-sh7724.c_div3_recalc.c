
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;



__attribute__((used)) static unsigned long div3_recalc(struct clk *clk)
{
 return clk->parent->rate / 3;
}
