
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shift; } ;
typedef TYPE_1__ field_desc ;
struct TYPE_6__ {int sn; char* data; } ;
typedef TYPE_2__ event ;


 char* default_string ;
 scalar_t__ unlikely (int ) ;
 int use_default ;

inline char *GET_STRING (event *e, field_desc *f) {
  if (unlikely(use_default)) {
    if (f->shift >= e->sn || *(short *)&e->data[f->shift] == -1) {
      return default_string;
    }
  }



  return &e->data[e->sn + (int)*(short *)&e->data[f->shift]];
}
