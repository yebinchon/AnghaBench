
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shift; scalar_t__ type; } ;
typedef TYPE_1__ field_desc ;
struct TYPE_6__ {int sn; char* data; } ;
typedef TYPE_2__ event ;


 int assert (int) ;
 scalar_t__ likely (int) ;
 scalar_t__ t_raw ;
 scalar_t__ t_string ;

inline char *GET_FIELD (event *e, field_desc *f) {
  if (likely (f->shift < e->sn)) {
    if (f->type == t_string || f->type == t_raw) {
      assert ((int)*(short *)&e->data[f->shift] >= 0);
      return &e->data[e->sn + (int)*(short *)&e->data[f->shift]];
    } else {
      assert (e->data[f->shift] != -1);
      return &e->data[e->sn + (int)(unsigned char)e->data[f->shift]];
    }
  }
  return ((void*)0);
}
