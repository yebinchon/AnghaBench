
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_buffer {int cur_idx; int cur; } ;
struct TYPE_2__ {int base; } ;


 TYPE_1__* TOPA_ENTRY (int ,int ) ;
 int TOPA_SHIFT ;
 void* phys_to_virt (int) ;

__attribute__((used)) static void *pt_buffer_region(struct pt_buffer *buf)
{
 return phys_to_virt(TOPA_ENTRY(buf->cur, buf->cur_idx)->base << TOPA_SHIFT);
}
