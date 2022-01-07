
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; } ;
typedef TYPE_1__ backend_internal ;



__attribute__((used)) static int config_backend_cmp(const void *a, const void *b)
{
 const backend_internal *bk_a = (const backend_internal *)(a);
 const backend_internal *bk_b = (const backend_internal *)(b);

 return bk_b->level - bk_a->level;
}
