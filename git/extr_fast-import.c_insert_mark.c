
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct object_entry {int dummy; } ;
struct TYPE_2__ {struct object_entry** marked; struct mark_set** sets; } ;
struct mark_set {int shift; TYPE_1__ data; } ;


 int fi_mem_pool ;
 struct mark_set* marks ;
 int marks_set_count ;
 void* mem_pool_calloc (int *,int,int) ;

__attribute__((used)) static void insert_mark(uintmax_t idnum, struct object_entry *oe)
{
 struct mark_set *s = marks;
 while ((idnum >> s->shift) >= 1024) {
  s = mem_pool_calloc(&fi_mem_pool, 1, sizeof(struct mark_set));
  s->shift = marks->shift + 10;
  s->data.sets[0] = marks;
  marks = s;
 }
 while (s->shift) {
  uintmax_t i = idnum >> s->shift;
  idnum -= i << s->shift;
  if (!s->data.sets[i]) {
   s->data.sets[i] = mem_pool_calloc(&fi_mem_pool, 1, sizeof(struct mark_set));
   s->data.sets[i]->shift = s->shift - 10;
  }
  s = s->data.sets[i];
 }
 if (!s->data.marked[idnum])
  marks_set_count++;
 s->data.marked[idnum] = oe;
}
