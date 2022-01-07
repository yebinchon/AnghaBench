
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__ const** child; } ;
struct TYPE_7__ {TYPE_1__ v; scalar_t__ n; } ;
typedef TYPE_2__ kson_node_t ;


 int kson_is_internal (TYPE_2__ const*) ;

__attribute__((used)) static inline const kson_node_t *kson_by_index(const kson_node_t *p, long i)
{
 if (!kson_is_internal(p)) return 0;
 return 0 <= i && i < (long)p->n? p->v.child[i] : 0;
}
