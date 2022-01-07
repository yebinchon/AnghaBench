
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topa_page {int topa; } ;
struct topa_entry {int dummy; } ;
struct pt_buffer {int nr_pages; unsigned long output_off; int data_size; int head; int * cur; struct topa_entry* cur_idx; scalar_t__ snapshot; } ;


 int PAGE_SHIFT ;
 int TOPA_ENTRY (int *,int ) ;
 int local64_set (int *,unsigned long) ;
 int local_set (int *,int ) ;
 int pt_buffer_region_size (struct pt_buffer*) ;
 struct topa_entry* pt_topa_entry_for_page (struct pt_buffer*,int) ;
 struct topa_page* topa_entry_to_page (struct topa_entry*) ;

__attribute__((used)) static void pt_buffer_reset_offsets(struct pt_buffer *buf, unsigned long head)
{
 struct topa_page *cur_tp;
 struct topa_entry *te;
 int pg;

 if (buf->snapshot)
  head &= (buf->nr_pages << PAGE_SHIFT) - 1;

 pg = (head >> PAGE_SHIFT) & (buf->nr_pages - 1);
 te = pt_topa_entry_for_page(buf, pg);

 cur_tp = topa_entry_to_page(te);
 buf->cur = &cur_tp->topa;
 buf->cur_idx = te - TOPA_ENTRY(buf->cur, 0);
 buf->output_off = head & (pt_buffer_region_size(buf) - 1);

 local64_set(&buf->head, head);
 local_set(&buf->data_size, 0);
}
