
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_chip {int type; struct device_node* of_node; } ;
struct device_node {struct device_node* parent; } ;


 int MAX_MACIO_CHIPS ;
 struct macio_chip* macio_chips ;

struct macio_chip *macio_find(struct device_node *child, int type)
{
 while(child) {
  int i;

  for (i=0; i < MAX_MACIO_CHIPS && macio_chips[i].of_node; i++)
   if (child == macio_chips[i].of_node &&
       (!type || macio_chips[i].type == type))
    return &macio_chips[i];
  child = child->parent;
 }
 return ((void*)0);
}
