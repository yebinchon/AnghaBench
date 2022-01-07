
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int field_desc ;
struct TYPE_6__ {size_t v_fid; int type; int v_int; long long v_long; double v_double; int v_raw_len; int v_raw; int v_string_len; int v_string; } ;
typedef TYPE_1__ field ;
struct TYPE_7__ {int type_id; char** tval; size_t tn; int* tp; size_t* id; int size; } ;
typedef TYPE_2__ event_dump ;
typedef int event ;
struct TYPE_8__ {int * fields; } ;


 char* GET_FIELD (int *,int *) ;
 int assert (int) ;
 scalar_t__ has_field (int *,size_t) ;
 char* raw_tmp_create (int ,int ) ;





 char* tmp_mem_strdupn (int ,int ) ;
 TYPE_3__* types ;

int event_dump_from_field (event_dump *d, field *f, int type_id, event *e) {
  assert (d->type_id == type_id);

  field_desc *ff = types[type_id].fields;
  char *dest;
  int flag = 0;
  if (e != ((void*)0) && has_field (e, f->v_fid) && f->type != 128 && f->type != 129) {
    dest = GET_FIELD (e, &ff[f->v_fid]);
  } else {
    dest = d->tval[d->tn];
    flag = 1;
  }

  int add = 0;
  switch (f->type) {
  case 131:
    *(int *)dest = f->v_int;
    add = 4;
    break;
  case 130:
    *(long long *)dest = f->v_long;
    add = 8;
    break;
  case 132:
    *(double *)dest = f->v_double;
    add = 8;
    break;
  case 128:
    *(char **)dest = tmp_mem_strdupn (f->v_string, f->v_string_len);
    add = f->v_string_len + 1;
    break;
  case 129:
    add = f->v_raw_len + sizeof (short);
    *(char **)dest = raw_tmp_create (f->v_raw, f->v_raw_len);
    break;
  default:
    assert (0);
  }

  if (flag) {
    d->tp[d->tn] = f->type;
    d->id[d->tn] = f->v_fid;
    d->size += add;
    d->tn++;
  }



  return 0;
}
