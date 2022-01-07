
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cacheinfo {int priv; scalar_t__ physical_line_partition; scalar_t__ number_of_sets; int size; scalar_t__ ways_of_associativity; scalar_t__ coherency_line_size; int type; int level; int attributes; int id; } ;
struct TYPE_11__ {scalar_t__ physical_line_partition; scalar_t__ ways_of_associativity; scalar_t__ coherency_line_size; } ;
struct TYPE_12__ {TYPE_5__ split; } ;
struct TYPE_9__ {scalar_t__ number_of_sets; } ;
struct TYPE_10__ {TYPE_3__ split; } ;
struct TYPE_7__ {size_t type; int level; } ;
struct TYPE_8__ {TYPE_1__ split; } ;
struct _cpuid4_info_regs {int nb; TYPE_6__ ebx; TYPE_4__ ecx; int size; TYPE_2__ eax; int id; } ;


 int CACHE_ID ;
 int * cache_type_map ;

__attribute__((used)) static void ci_leaf_init(struct cacheinfo *this_leaf,
    struct _cpuid4_info_regs *base)
{
 this_leaf->id = base->id;
 this_leaf->attributes = CACHE_ID;
 this_leaf->level = base->eax.split.level;
 this_leaf->type = cache_type_map[base->eax.split.type];
 this_leaf->coherency_line_size =
    base->ebx.split.coherency_line_size + 1;
 this_leaf->ways_of_associativity =
    base->ebx.split.ways_of_associativity + 1;
 this_leaf->size = base->size;
 this_leaf->number_of_sets = base->ecx.split.number_of_sets + 1;
 this_leaf->physical_line_partition =
    base->ebx.split.physical_line_partition + 1;
 this_leaf->priv = base->nb;
}
