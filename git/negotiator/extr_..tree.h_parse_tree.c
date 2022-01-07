
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int parse_tree_gently (struct tree*,int ) ;

__attribute__((used)) static inline int parse_tree(struct tree *tree)
{
 return parse_tree_gently(tree, 0);
}
