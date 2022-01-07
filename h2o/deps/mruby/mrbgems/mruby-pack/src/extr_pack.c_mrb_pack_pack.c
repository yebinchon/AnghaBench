
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpl {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int mrb_float ;


 int E_RANGE_ERROR ;
 int E_TYPE_ERROR ;





 int PACK_DIR_INVALID ;

 int PACK_DIR_NUL ;




 unsigned int PACK_FLAG_WIDTH ;
 int PACK_TYPE_FLOAT ;
 int PACK_TYPE_INTEGER ;
 int PACK_TYPE_STRING ;
 scalar_t__ RARRAY_LEN (int ) ;
 scalar_t__ has_tmpl (struct tmpl*) ;
 int mrb_ary_ref (int *,int ,scalar_t__) ;
 int mrb_class_path (int *,int ) ;
 int mrb_float_p (int ) ;
 int mrb_float_value (int *,int ) ;
 int mrb_nil_value () ;
 int mrb_obj_class (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_new (int *,int *,int) ;
 int mrb_str_resize (int *,int ,int) ;
 int mrb_string_p (int ) ;
 int mrb_to_flo (int *,int ) ;
 int mrb_to_int (int *,int ) ;
 int pack_a (int *,int ,int ,int,int,unsigned int) ;
 int pack_c (int *,int ,int ,int,unsigned int) ;
 int pack_double (int *,int ,int ,int,unsigned int) ;
 int pack_float (int *,int ,int ,int,unsigned int) ;
 int pack_h (int *,int ,int ,int,int,unsigned int) ;
 int pack_l (int *,int ,int ,int,unsigned int) ;
 int pack_m (int *,int ,int ,int,int,unsigned int) ;
 int pack_q (int *,int ,int ,int,unsigned int) ;
 int pack_s (int *,int ,int ,int,unsigned int) ;
 int pack_utf8 (int *,int ,int ,int,int,unsigned int) ;
 scalar_t__ pack_x (int *,int ,int ,int,int,unsigned int) ;
 int prepare_tmpl (int *,struct tmpl*) ;
 int read_tmpl (int *,struct tmpl*,int*,int*,int*,int*,unsigned int*) ;

__attribute__((used)) static mrb_value
mrb_pack_pack(mrb_state *mrb, mrb_value ary)
{
  mrb_value o, result;
  mrb_int aidx;
  struct tmpl tmpl;
  int count;
  unsigned int flags;
  int dir, ridx, size, type;

  prepare_tmpl(mrb, &tmpl);

  result = mrb_str_new(mrb, ((void*)0), 128);
  aidx = 0;
  ridx = 0;
  while (has_tmpl(&tmpl)) {
    read_tmpl(mrb, &tmpl, &dir, &type, &size, &count, &flags);

    if (dir == PACK_DIR_INVALID)
      continue;
    else if (dir == PACK_DIR_NUL) {
        ridx += pack_x(mrb, mrb_nil_value(), result, ridx, count, flags);
        continue;
    }

    for (; aidx < RARRAY_LEN(ary); aidx++) {
      if (count == 0 && !(flags & PACK_FLAG_WIDTH))
        break;

      o = mrb_ary_ref(mrb, ary, aidx);
      if (type == PACK_TYPE_INTEGER) {
        o = mrb_to_int(mrb, o);
      }

      else if (type == PACK_TYPE_FLOAT) {
        if (!mrb_float_p(o)) {
          mrb_float f = mrb_to_flo(mrb, o);
          o = mrb_float_value(mrb, f);
        }
      }

      else if (type == PACK_TYPE_STRING) {
        if (!mrb_string_p(o)) {
          mrb_raisef(mrb, E_TYPE_ERROR, "can't convert %S into String", mrb_class_path(mrb, mrb_obj_class(mrb, o)));
        }
      }

      switch (dir) {
      case 136:
        ridx += pack_c(mrb, o, result, ridx, flags);
        break;
      case 130:
        ridx += pack_s(mrb, o, result, ridx, flags);
        break;
      case 132:
        ridx += pack_l(mrb, o, result, ridx, flags);
        break;
      case 131:
        ridx += pack_q(mrb, o, result, ridx, flags);
        break;
      case 137:
        ridx += pack_m(mrb, o, result, ridx, count, flags);
        break;
      case 133:
        ridx += pack_h(mrb, o, result, ridx, count, flags);
        break;
      case 129:
        ridx += pack_a(mrb, o, result, ridx, count, flags);
        break;

      case 135:
        ridx += pack_double(mrb, o, result, ridx, flags);
        break;
      case 134:
        ridx += pack_float(mrb, o, result, ridx, flags);
        break;

      case 128:
        ridx += pack_utf8(mrb, o, result, ridx, count, flags);
        break;
      default:
        break;
      }
      if (dir == 129) {
        aidx++;
        break;
      }
      if (count > 0) {
        count--;
      }
    }
    if (ridx < 0) {
      mrb_raise(mrb, E_RANGE_ERROR, "negative (or overflowed) template size");
    }
  }

  mrb_str_resize(mrb, result, ridx);
  return result;
}
