
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct topa {int last; scalar_t__ size; scalar_t__ offset; int list; } ;
struct pt_buffer {struct topa* last; struct topa* cur; struct topa* first; int tables; } ;
struct TYPE_2__ {int end; int base; } ;


 int BUG_ON (int) ;
 int PT_CAP_topa_multiple_entries ;
 int TENTS_PER_PAGE ;
 TYPE_1__* TOPA_ENTRY (struct topa*,int) ;
 int intel_pt_validate_hw_cap (int ) ;
 int list_add_tail (int *,int *) ;
 int topa_pfn (struct topa*) ;

__attribute__((used)) static void topa_insert_table(struct pt_buffer *buf, struct topa *topa)
{
 struct topa *last = buf->last;

 list_add_tail(&topa->list, &buf->tables);

 if (!buf->first) {
  buf->first = buf->last = buf->cur = topa;
  return;
 }

 topa->offset = last->offset + last->size;
 buf->last = topa;

 if (!intel_pt_validate_hw_cap(PT_CAP_topa_multiple_entries))
  return;

 BUG_ON(last->last != TENTS_PER_PAGE - 1);

 TOPA_ENTRY(last, -1)->base = topa_pfn(topa);
 TOPA_ENTRY(last, -1)->end = 1;
}
