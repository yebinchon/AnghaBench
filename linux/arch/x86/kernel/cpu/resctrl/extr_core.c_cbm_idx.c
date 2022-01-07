
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int cbm_idx_mult; unsigned int cbm_idx_offset; } ;
struct rdt_resource {TYPE_1__ cache; } ;



__attribute__((used)) static unsigned int cbm_idx(struct rdt_resource *r, unsigned int closid)
{
 return closid * r->cache.cbm_idx_mult + r->cache.cbm_idx_offset;
}
