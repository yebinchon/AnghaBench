
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_buffer {int cur_idx; int cur; } ;


 size_t TOPA_ENTRY_SIZE (int ,int ) ;

__attribute__((used)) static size_t pt_buffer_region_size(struct pt_buffer *buf)
{
 return TOPA_ENTRY_SIZE(buf->cur, buf->cur_idx);
}
