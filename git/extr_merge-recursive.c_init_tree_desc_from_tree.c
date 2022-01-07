
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;


 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int parse_tree (struct tree*) ;

__attribute__((used)) static void init_tree_desc_from_tree(struct tree_desc *desc, struct tree *tree)
{
 parse_tree(tree);
 init_tree_desc(desc, tree->buffer, tree->size);
}
