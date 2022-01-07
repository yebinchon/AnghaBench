
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct TYPE_2__ {int empty_tree; } ;


 struct tree* lookup_tree (struct repository*,int ) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static struct tree *empty_tree(struct repository *r)
{
 return lookup_tree(r, the_hash_algo->empty_tree);
}
