
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct badblocks {int * page; scalar_t__ dev; } ;


 int devm_kfree (scalar_t__,int *) ;
 int kfree (int *) ;

void badblocks_exit(struct badblocks *bb)
{
 if (!bb)
  return;
 if (bb->dev)
  devm_kfree(bb->dev, bb->page);
 else
  kfree(bb->page);
 bb->page = ((void*)0);
}
