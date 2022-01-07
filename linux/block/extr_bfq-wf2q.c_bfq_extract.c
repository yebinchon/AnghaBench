
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct bfq_entity {int rb_node; int * tree; } ;


 int rb_erase (int *,struct rb_root*) ;

__attribute__((used)) static void bfq_extract(struct rb_root *root, struct bfq_entity *entity)
{
 entity->tree = ((void*)0);
 rb_erase(&entity->rb_node, root);
}
