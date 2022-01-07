
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toptree {size_t id; } ;
struct TYPE_2__ {int* to_node_id; } ;


 TYPE_1__* emu_cores ;

__attribute__((used)) static int core_pinned_to_node_id(struct toptree *core)
{
 return emu_cores->to_node_id[core->id];
}
