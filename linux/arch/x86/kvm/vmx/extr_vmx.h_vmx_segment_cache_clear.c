
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bitmask; } ;
struct vcpu_vmx {TYPE_1__ segment_cache; } ;



__attribute__((used)) static inline void vmx_segment_cache_clear(struct vcpu_vmx *vmx)
{
 vmx->segment_cache.bitmask = 0;
}
