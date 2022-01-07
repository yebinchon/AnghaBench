
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t type; int shift; } ;
typedef TYPE_1__ field_desc ;
struct TYPE_6__ {int sn; int* data; int * std_val; } ;
typedef TYPE_2__ event ;


 size_t FN ;
 int default_long ;
 scalar_t__ unlikely (int ) ;
 int use_default ;

inline char *GET_FIELD (event *e, field_desc *f) {
  if (f->type < 0) {
    return (char *)&e->std_val[f->type + FN];
  }

  if (unlikely(use_default)) {
    if (f->shift >= e->sn || e->data[f->shift] == -1) {
      return (char *)&default_long;
    }
  }



  return &e->data[e->sn + (int)(unsigned char)e->data[f->shift]];
}
