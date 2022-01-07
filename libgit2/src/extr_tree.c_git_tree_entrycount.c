
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; } ;
struct TYPE_6__ {TYPE_1__ entries; } ;
typedef TYPE_2__ git_tree ;


 int assert (TYPE_2__ const*) ;

size_t git_tree_entrycount(const git_tree *tree)
{
 assert(tree);
 return tree->entries.size;
}
