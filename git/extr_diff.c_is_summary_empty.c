
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {int status; TYPE_2__* two; TYPE_1__* one; int score; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_3__ {int mode; } ;







__attribute__((used)) static int is_summary_empty(const struct diff_queue_struct *q)
{
 int i;

 for (i = 0; i < q->nr; i++) {
  const struct diff_filepair *p = q->queue[i];

  switch (p->status) {
  case 129:
  case 131:
  case 130:
  case 128:
   return 0;
  default:
   if (p->score)
    return 0;
   if (p->one->mode && p->two->mode &&
       p->one->mode != p->two->mode)
    return 0;
   break;
  }
 }
 return 1;
}
