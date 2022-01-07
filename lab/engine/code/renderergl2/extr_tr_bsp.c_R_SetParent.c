
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int contents; struct TYPE_4__** children; struct TYPE_4__* parent; } ;
typedef TYPE_1__ mnode_t ;



__attribute__((used)) static void R_SetParent (mnode_t *node, mnode_t *parent)
{
 node->parent = parent;
 if (node->contents != -1)
  return;
 R_SetParent (node->children[0], node);
 R_SetParent (node->children[1], node);
}
