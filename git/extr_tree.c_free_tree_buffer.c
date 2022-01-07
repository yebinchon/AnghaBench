
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parsed; } ;
struct tree {TYPE_1__ object; scalar_t__ size; int buffer; } ;


 int FREE_AND_NULL (int ) ;

void free_tree_buffer(struct tree *tree)
{
 FREE_AND_NULL(tree->buffer);
 tree->size = 0;
 tree->object.parsed = 0;
}
