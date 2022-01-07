
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ segment ;
typedef int mrb_state ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ last_len; TYPE_1__* rootseg; } ;
typedef TYPE_2__ iv_tbl ;


 scalar_t__ MRB_IV_SEGMENT_SIZE ;

__attribute__((used)) static size_t
iv_size(mrb_state *mrb, iv_tbl *t)
{
  segment *seg;
  size_t size = 0;

  if (t == ((void*)0)) return 0;
  if (t->size > 0) return t->size;
  seg = t->rootseg;
  while (seg) {
    if (seg->next == ((void*)0)) {
      size += t->last_len;
      return size;
    }
    seg = seg->next;
    size += MRB_IV_SEGMENT_SIZE;
  }

  return 0;
}
