
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toptree {size_t id; } ;
struct TYPE_2__ {int* per_node; } ;


 TYPE_1__* emu_cores ;

__attribute__((used)) static int cores_pinned(struct toptree *node)
{
 return emu_cores->per_node[node->id];
}
